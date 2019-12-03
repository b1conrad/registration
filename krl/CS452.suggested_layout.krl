ruleset CS452.suggested_layout {
  meta {
    use module io.picolabs.wrangler alias wrangler
    shares __testing, layout
  }
  global {
    __testing = { "queries":
      [ { "name": "__testing" }
      , { "name": "layout", "args": [ "start" ] }
      ] , "events":
      [ { "domain": "agents", "type": "layout_needed", "attrs": [ "start" ] }
      //, { "domain": "d2", "type": "t2", "attrs": [ "a1", "a2" ] }
      ]
    }
    position = function(index){
      [index % 10 * 88, math:int(index / 10) * 27 + 3]
    }
    layout = function(start){
      starter = function(a,x){
        a.length() => a.append(x)
                    | x{"name"}.match(start) => [x] | []
      };
      wrangler:children()
        .reduce(starter,[])
        .map(function(x,i){x.put("position",position(i))})
    }
  }
  rule perform_layout {
    select when agents layout_needed
      start re#^(stu00\d{4})# setting(start)
    foreach layout(start) setting(v)
    pre { position = v{"position"} }
    if position && position.length()==2 then
    event:send({"eci":v{"eci"},"eid":"move",
      "domain":"visual", "type":"moved",
      "attrs":{"left":position[0],"top":position[1]}
    })
  }
}

ruleset CS452.sections {
  meta {
    use module io.picolabs.wrangler alias wrangler
    shares __testing, sections
  }
  global {
    __testing = { "queries":
      [ { "name": "__testing" }
      , { "name": "sections", "args": [] }
      ] , "events":
      [ //{ "domain": "d1", "type": "t1" }
      //, { "domain": "d2", "type": "t2", "attrs": [ "a1", "a2" ] }
      ]
    }
    sections = function(){
      wrangler:children()
    }
  }
  rule forward_add_request {
    select when section added
    pre {
      sid = event:attr("sid")
      eci = sections()
        .filter(function(x){x{"name"}==sid})
        .head(){"eci"}
    }
    if eci then
      event:send({"eci":eci,"eid":"add",
        "domain":"section","type":"added",
        "attrs":event:attrs
      })
    fired {
      last
    }
  }
  rule create_section_pico {
    select when section added
    pre {
      sid = event:attr("sid")
    }
    fired {
      raise wrangler event "new_child_request" attributes {
        "name": sid, "rids": ["CS452.section"],
        "student": event:attr("student"), "subs_eci": event:attr("subs_eci")
      }
    }
  }
}

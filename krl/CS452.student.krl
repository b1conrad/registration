ruleset CS452.student {
  meta {
    use module org.sovrin.agent alias agent
    use module io.picolabs.subscription alias subs
    use module CS452.valid_sections alias check
    shares __testing, name, my_classes
  }
  global {
    __testing = { "queries":
      [ { "name": "__testing" }
      , { "name": "name", "args": [] }
      , { "name": "my_classes", "args": [] }
      ] , "events":
      [ { "domain": "registration", "type": "add", "attrs": [ "sid" ] }
      , { "domain": "registration", "type": "drop", "attrs": [ "sid" ] }
      ]
    }
    name = function(){
      agent:ui(){"name"}
    }
    my_classes = function(){
      ent:my_classes.values()
    }
    subs_eci = function(){
      subs:wellKnown_Rx(){"id"}
    }
    sections_eci = "BtWAgUZ2cF2crWzyaK3DhA"
  }
  rule on_installation {
    select when wrangler ruleset_added where event:attr("rids") >< meta:rid
    fired {
      ent:my_classes := {}
    }
  }
  rule check_input_section_id {
    select when registration add or registration drop
    pre {
      sid = event:attr("sid")
      ok = check:valid(sid)
    }
    if not ok then send_directive("not in experiment",{"sid":sid})
    fired {
      last
    }
  }
  rule check_for_already_added {
    select when registration add
    if my_classes() >< event:attr("sid") then
      send_directive("already added")
    fired {
      last
    }
  }
  rule handle_registration_add {
    select when registration add sid re#([A-Z][A-Z 0-9]+-\d+)# setting(sid)
    event:send({"eci":sections_eci, "eid":"add",
      "domain":"section", "type":"added",
      "attrs":{"sid":sid,"student":name(),"subs_eci":subs_eci()}
    })
  }
  rule auto_accept {
    select when wrangler inbound_pending_subscription_added
    pre {
      ok = event:attr("Rx_role") == "student"
        && event:attr("Tx_role") == "section"
    }
    if ok then noop()
    fired {
      ent:my_classes{event:attr("Id")} := event:attr("name");
      raise wrangler event "pending_subscription_approval"
        attributes event:attrs
    }
  }
  rule cleanup_deletions {
    select when wrangler established_removal
    pre {
      gone = event:attr("Id").klog("gone")
    }
    if ent:my_classes >< gone then noop()
    fired {
      ent:my_classes := ent:my_classes.delete(gone)
    }
  }
  rule handle_registration_drop {
    select when registration drop
    pre {
      Id = ent:my_classes
        .filter(function(x){x==event:attr("sid")})
        .keys()
        .head()
    }
    if Id then noop()
    fired {
      raise wrangler event "subscription_cancellation"
        attributes {"Id":Id}
    }
  }
}

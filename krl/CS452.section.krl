ruleset CS452.section {
  meta {
    use module io.picolabs.wrangler alias wrangler
    shares __testing, name, roster
  }
  global {
    __testing = { "queries":
      [ { "name": "__testing" }
      , { "name": "name", "args": [] }
      , { "name": "roster", "args": [] }
      ] , "events":
      [ { "domain": "section", "type": "added", "attrs": [ "student", "subs_eci" ] }
      //, { "domain": "d2", "type": "t2", "attrs": [ "a1", "a2" ] }
      ]
    }
    name = function(){
      wrangler:name()
    }
    roster = function(){
      ent:roster.values()
    }
  }
  rule on_installation {
    select when wrangler ruleset_added where event:attr("rids") >< meta:rid
    pre {
      rs_attrs = event:attr("rs_attrs")
    }
    fired {
      ent:roster := {};
      raise section event "capacity_needed";
      raise section event "added" attributes rs_attrs
    }
  }
  rule get_capacity {
    select when section capacity_needed
  }
  rule add_student {
    select when section added
      student re#(.+)#
      subs_eci re#(.+)#
      setting(student,subs_eci)
    fired {
      raise wrangler event "subscription" attributes {
        "wellKnown_Tx": subs_eci,
        "Rx_role": "section",
        "Tx_role": "student",
        "name": name(),
        "channel_type": "subscription",
        "student": student
      }
    }
  }
  rule record_student_subscription {
    select when wrangler outbound_pending_subscription_approved
    fired {
      ent:roster{event:attr("Id")} := event:attr("student")
    }
  }
  rule handle_deletion {
    select when wrangler established_removal
    pre {
      gone = event:attr("Id").klog("gone")
    }
    if ent:roster >< gone then noop()
    fired {
      ent:roster := ent:roster.delete(gone)
    }
  }
}

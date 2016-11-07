ruleset app_registration_owner {
  meta {
    shares __testing
    use module io.picolabs.pico alias wrangler
  }
  global {
    __testing = { "queries": [ { "name": "__testing" } ],
                  "events": [ { "domain": "registration", "type": "channel_needed",
                                "attrs": [ "student_id" ] } ] }
    registrationPico = function(){
      wrangler:children()[0] // for now assume it is the first child
    }
    newRegistrationChannel = function(student_id){
      engine:newChannel(
        { "name": student_id,
          "type": "anon",
          "pico_id": registrationPico().id } )
    }
  }

  rule registration_channel_needed {
    select when registration channel_needed
    pre {
      student_id = event:attr("student_id")
      anon_channel = newRegistrationChannel(student_id)
      anon_eci = anon_channel.id
                             .klog("anon_eci issued:")
    }
    send_directive("registration")
      with eci = anon_eci
  }
}

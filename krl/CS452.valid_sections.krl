ruleset CS452.valid_sections {
  meta {
    shares __testing
    provides valid
  }
  global {
    __testing = { "queries":
      [ { "name": "__testing" }
      , { "name": "valid", "args": [ "sid" ] }
      ] , "events":
      [ //{ "domain": "d1", "type": "t1" }
      //, { "domain": "d2", "type": "t2", "attrs": [ "a1", "a2" ] }
      ]
    }
    in_experiment = [
      "A HTG 100-11",
      "A HTG 100-13",
      "A HTG 100-16",
      "A HTG 100-17",
      "A HTG 100-19",
      "A HTG 100-2",
      "A HTG 100-22",
      "A HTG 100-3",
      "A HTG 100-31",
      "A HTG 100-33",
      "A HTG 100-34",
      "A HTG 100-36",
      "A HTG 100-37",
      "A HTG 100-38",
      "A HTG 100-4",
      "A HTG 100-41",
      "A HTG 100-46",
      "A HTG 100-47",
      "A HTG 100-49",
      "A HTG 100-5",
      "A HTG 100-52",
      "A HTG 100-53",
      "A HTG 100-55",
      "A HTG 100-56",
      "A HTG 100-57",
      "A HTG 100-6",
      "A HTG 100-60",
      "A HTG 100-63",
      "A HTG 100-64",
      "A HTG 100-66",
      "A HTG 100-7",
      "A HTG 100-70",
      "A HTG 100-76",
      "A HTG 100-77",
      "A HTG 100-78",
      "A HTG 100-79",
      "A HTG 100-8",
      "A HTG 100-84",
      "A HTG 100-89",
      "A HTG 100-9",
      "A HTG 100-90",
      "A HTG 100-91",
      "A HTG 100-93",
      "A HTG 100-94",
      "A HTG 100-95",
      "A HTG 100-96",
      "A HTG 100-99",
      "ACC 200-1",
      "ACC 200-2",
      "ACC 550-1",
      "ANTHR 101-7",
      "ART 101-8",
      "ART 105-1",
      "ART 105-3",
      "ART 110-1",
      "ART 115-3",
      "ARTED 326-1",
      "ARTED 326-6",
      "ARTED 326-8",
      "ARTED 326-9",
      "ARTHC 111-2",
      "ARTHC 111-2",
      "ARTHC 201-1",
      "ARTHC 201-6",
      "ARTHC 201-6",
      "ASL 101-6",
      "ASL 102-1",
      "ASL 102-2",
      "BIO 100-18",
      "BIO 100-20",
      "BIO 100-3",
      "BIO 420-2",
      "BIO 421-2",
      "BUS M 170-1",
      "BUS M 371-1",
      "BUS M 372-2",
      "BUS M 380-2",
      "BUS M 390-3",
      "BUS M 430-1",
      "BUS M 450-2",
      "BUS M 461-1",
      "BUS M 487-3",
      "BUS M 494-1",
      "BUS M 498-4",
      "BUS M 582-1",
      "BUS M 596-4",
      "C S 142-2",
      "C S 142-4",
      "C S 142-5",
      "C S 142-9",
      "C S 235-3",
      "C S 345-1",
      "C S 355-1",
      "C S 460-1",
      "C S 462-1",
      "C S 465-1",
      "C S 478-1",
      "CFM 105-1",
      "CH EN 191-1",
      "CH EN 386-1",
      "CHEM 105-1",
      "CHEM 106-31",
      "CHEM 106-34",
      "CHEM 107-5",
      "CHEM 107-6",
      "CHEM 107-7",
      "CHEM 112-1",
      "CHEM 285-2",
      "CHEM 352-1",
      "CHEM 352-11",
      "CHEM 352-2",
      "CHEM 352-7",
      "CHEM 353-2",
      "CHEM 353-6",
      "CHEM 354-1",
      "CHEM 468-1",
      "CHEM 481-1",
      "CHEM 481-2",
      "CHEM 482-1",
      "CHEM 594-1",
      "CHIN 345-1",
      "CL CV 201-1",
      "CL CV 241-1",
      "COMD 450-1",
      "COMMS 101-1",
      "COMMS 101-2",
      "COMMS 101-4",
      "COMMS 230-3",
      "COMMS 235-1",
      "CSANM 150-1",
      "CSANM 150-3",
      "DANCE 180-10",
      "DANCE 180-2",
      "DANCE 180-23",
      "DANCE 180-6",
      "DANCE 185-1",
      "DANCE 243-2",
      "DANCE 244-2",
      "DANCE 260-3",
      "DANCE 378-2",
      "DANCE 485-1",
      "DANCE 488-2",
      "DESAN 160-2",
      "DESIL 131-1",
      "DESIL 131-1",
      "DESIL 350-2",
      "DESIL 355-1",
      "DIGHT 250-2",
      "EC EN 360-2",
      "EC EN 443-1",
      "EC EN 485-1",
      "EC EN 487-1",
      "ECON 110-3",
      "ECON 110-8",
      "ECON 388-3",
      "ECON 413-1",
      "ECON 461-1",
      "ECON 475-1",
      "ENGL 312-10",
      "ENGL 312-17",
      "ENGL 312-4",
      "ENGL 312-9",
      "ENGL 315-5",
      "ENGL 316-15",
      "ENGL 316-30",
      "EXSC 320-5",
      "EXSC 321-4",
      "EXSC 410-2",
      "FIN 200-2",
      "FLANG 102-7",
      "FREN 101-5",
      "FREN 101-6",
      "FREN 202-3",
      "FREN 317-1",
      "FREN 346-1",
      "FREN 452-2",
      "GEOG 130-1",
      "HIST 201-2",
      "HIST 201-7",
      "HIST 202-1",
      "HIST 202-4",
      "HIST 202-6",
      "HIST 220-2",
      "HIST 302-1",
      "HLTH 201-1",
      "HLTH 335-1",
      "HLTH 345-2",
      "HLTH 383-1",
      "HLTH 450-1",
      "IHUM 201-3",
      "IHUM 201-8",
      "IHUM 202-1",
      "IHUM 202-14",
      "IHUM 202-15",
      "IHUM 202-19",
      "IHUM 202-2",
      "IHUM 202-21",
      "IHUM 202-22",
      "IHUM 202-5",
      "IS 110-2",
      "IS 303-1",
      "IS 515-2",
      "IS 520-1",
      "IS 542-1",
      "IS 552-1",
      "IS 565-3",
      "IT 567-1",
      "MATH 110-3",
      "MATH 112-3",
      "MATH 290-1",
      "MATH 290-3",
      "MATH 313-10",
      "MATH 313-3",
      "MATH 313-3",
      "MATH 313-6",
      "MATH 313-9",
      "MATH 314-2",
      "MATH 334-3",
      "MATH 341-1",
      "ME EN 191-1",
      "ME EN 321-1",
      "ME EN 330-1",
      "ME EN 330-4",
      "ME EN 335-1",
      "ME EN 340-1",
      "ME EN 362-1",
      "ME EN 372-2",
      "ME EN 382-2",
      "ME EN 393-1",
      "ME EN 426-1",
      "ME EN 476-1",
      "ME EN 476-1",
      "ME EN 497-22",
      "ME EN 534-1",
      "MFG 434-7",
      "MFG 491-1",
      "MMBIO 151-2",
      "MMBIO 221-1",
      "MMBIO 240-3",
      "MMBIO 240-4",
      "MPA 631-3",
      "MPA 638-1",
      "MPA 659-1",
      "MPA 686-1",
      "MPA 690-7",
      "MUSIC 101-1",
      "MUSIC 101-4",
      "MUSIC 101-5",
      "MUSIC 111-2",
      "MUSIC 111-6",
      "MUSIC 117-2",
      "MUSIC 118-1",
      "MUSIC 186-2",
      "MUSIC 194-4",
      "MUSIC 196-1",
      "MUSIC 198-2",
      "MUSIC 202-1",
      "MUSIC 202-2",
      "MUSIC 260-5",
      "MUSIC 311-1",
      "MUSIC 312-1",
      "MUSIC 313-1",
      "MUSIC 326-1",
      "NDFS 100-2",
      "NDFS 100-3",
      "NDFS 100-4",
      "NDFS 100-6",
      "NDFS 191-1",
      "NDFS 310-1",
      "NDFS 424-1",
      "NEURO 360-1",
      "NEURO 480-1",
      "NEURO 480-1",
      "NEURO 480-2",
      "NEURO 481-1",
      "NEURO 481-2",
      "NEURO 481-2",
      "PDBIO 120-2",
      "PDBIO 120-3",
      "PDBIO 220-1",
      "PDBIO 220-1",
      "PDBIO 220-22",
      "PDBIO 220-29",
      "PDBIO 220-3",
      "PDBIO 220-7",
      "PDBIO 362-2",
      "PDBIO 363-5",
      "PDBIO 365-1",
      "PETE 344-1",
      "PHIL 201-1",
      "PHSCS 106-1",
      "PHSCS 106-2",
      "PHSCS 107-9",
      "PHSCS 108-2",
      "PHSCS 121-1",
      "PHSCS 123-1",
      "PHY S 100-1",
      "PHY S 100-22",
      "PHY S 100-25",
      "PHY S 100-37",
      "PHY S 100-38",
      "PHY S 100-4",
      "POLI 110-1",
      "PORT 102-1",
      "PORT 356-1",
      "PSYCH 101-2",
      "PSYCH 111-1",
      "PSYCH 111-4",
      "PSYCH 111-5",
      "PSYCH 210-1",
      "PSYCH 308-3",
      "PSYCH 388-1",
      "PWS 112-2",
      "PWS 150-2",
      "PWS 150-3",
      "PWS 340-3",
      "PWS 375-1",
      "PWS 440-1",
      "PWS 488-1",
      "RECM 482-1",
      "REL A 121-12",
      "REL A 121-12",
      "REL A 121-15",
      "REL A 121-22",
      "REL A 121-6",
      "REL A 122-10",
      "REL A 122-12",
      "REL A 122-13",
      "REL A 122-4",
      "REL A 122-8",
      "REL A 211-11",
      "REL A 211-13",
      "REL A 211-15",
      "REL A 211-15",
      "REL A 211-19",
      "REL A 211-4",
      "REL A 211-9",
      "REL A 212-10",
      "REL A 212-11",
      "REL A 212-3",
      "REL A 212-5",
      "REL A 212-8",
      "REL A 250-11",
      "REL A 250-17",
      "REL A 250-20",
      "REL A 250-3",
      "REL A 250-9",
      "REL A 275-12",
      "REL A 275-13",
      "REL A 275-18",
      "REL A 275-27",
      "REL A 275-7",
      "REL A 302-1",
      "REL A 304-2",
      "REL A 327-8",
      "REL C 130-14",
      "REL C 130-4",
      "REL C 130-6",
      "REL C 130-8",
      "REL C 200-1",
      "REL C 200-13",
      "REL C 200-15",
      "REL C 200-19",
      "REL C 200-25",
      "REL C 200-25",
      "REL C 200-33",
      "REL C 200-4",
      "REL C 200-8",
      "REL C 200-9",
      "REL C 225-10",
      "REL C 225-11",
      "REL C 225-19",
      "REL C 225-21",
      "REL C 225-24",
      "REL C 225-28",
      "REL C 225-28",
      "REL C 225-29",
      "REL C 225-4",
      "REL C 225-7",
      "REL C 225-7",
      "REL C 324-11",
      "REL C 324-4",
      "REL C 324-9",
      "REL C 325-10",
      "REL C 325-2",
      "REL C 325-8",
      "REL C 333-1",
      "REL C 333-10",
      "REL C 351-12",
      "REL C 351-5",
      "REL C 351-9",
      "REL C 357-4",
      "REL C 358-2",
      "REL C 471-1",
      "REL C 471-2",
      "REL C 471-4",
      "RUSS 343-1",
      "RUSS 442-2",
      "SFL 101-1",
      "SFL 102-2",
      "SFL 110-1",
      "SFL 110-12",
      "SFL 160-4",
      "SFL 185-4",
      "SFL 210-1",
      "SFL 210-3",
      "SFL 223-2",
      "SFL 287-2",
      "SFL 290-1",
      "SFL 290-3",
      "SFL 290-5",
      "SOC 111-1",
      "SOC 111-2",
      "SOC 111-4",
      "SOC 112-1",
      "SOC 113-2",
      "SOC 404-1",
      "SOC 421-1",
      "SPAN 321-1",
      "SPAN 321-16",
      "SPAN 321-3",
      "SPAN 323-2",
      "SPAN 339-5",
      "SPAN 339-7",
      "SPAN 339-8",
      "SPAN 355-7",
      "STAC 100-1",
      "STAC 100-11",
      "STAC 100-15",
      "STAC 100-16",
      "STAC 100-2",
      "STAC 100-3",
      "STAC 100-4",
      "STAC 100-5",
      "STAC 100-6",
      "STAC 100-8",
      "STAC 107-2",
      "STAC 108-1",
      "STAC 108-2",
      "STAC 108-4",
      "STAC 108-5",
      "STAC 108-7",
      "STAC 109-1",
      "STAC 109-2",
      "STAC 109-4",
      "STAC 109-5",
      "STAC 110-15",
      "STAC 110-8",
      "STAC 110-9",
      "STAC 111-2",
      "STAC 112-1",
      "STAC 112-7",
      "STAC 112-7",
      "STAC 116-2",
      "STAC 116-5",
      "STAC 117-1",
      "STAC 125-1",
      "STAC 125-6",
      "STAC 136-2",
      "STAC 141-3",
      "STAC 141-5",
      "STAC 147-3",
      "STAC 150-1",
      "STAC 150-2",
      "STAC 150-2",
      "STAC 150-3",
      "STAC 155-4",
      "STAC 157-1",
      "STAC 161-1",
      "STAC 161-2",
      "STAC 162-2",
      "STAC 171-2",
      "STAC 175-2",
      "STAC 181-1",
      "STAC 186-7",
      "STAC 187-1",
      "STAC 187-10",
      "STAC 187-4",
      "STAC 187-8",
      "STAC 187-9",
      "STAC 191-12",
      "STAC 191-19",
      "STAC 191-21",
      "STAC 191-6",
      "STAC 191-8",
      "STAC 191-8",
      "STAT 121-10",
      "STAT 121-2",
      "STAT 121-20",
      "STAT 121-21",
      "STAT 121-21",
      "STAT 121-51",
      "STAT 121-8",
      "STAT 666-1",
      "STDEV 109-1",
      "STDEV 109-14",
      "STDEV 109-16",
      "STDEV 109-5",
      "STDEV 109-9",
      "STDEV 117-10",
      "STDEV 117-13",
      "STDEV 117-2",
      "STDEV 117-6",
      "STDEV 150-12",
      "STDEV 150-19",
      "STDEV 150-8",
      "STDEV 168-1",
      "STDEV 214-8",
      "STDEV 214-8",
      "STDEV 317-1",
      "STDEV 317-4",
      "STDEV 358-3",
      "STDEV 364-1",
      "STDEV 470-1",
      "TECH 202-1",
      "TECH 202-2",
      "TECH 202-2",
      "TECH 601-1",
      "TMA 123-1",
      "TMA 202-4",
      "UNIV 292-1",
      "WRTG 150-19",
      "WRTG 150-25",
      "WRTG 150-32",
      "WRTG 150-52",
      "WRTG 150-9",
      "WRTG 150-92",
      "WS 222-2",
      "WS 332-1",
    ]
    valid = function(sid){
      in_experiment >< sid
    }
  }
}

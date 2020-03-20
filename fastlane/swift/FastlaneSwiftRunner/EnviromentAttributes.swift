//
//  EnviromentAttributes.swift
//  FastlaneRunner
//
//  Created by Robin Kment on 05/02/2020.
//  Copyright © 2020 Joshua Liebowitz. All rights reserved.
//

import Foundation

let enviromentAttributes: [String: Any] = [
    "MATCH_PASSWORD" : "Jak-FUL-8E9-RcD",
    "FASTLANE_USER": appleID,
    "FASTLANE_PASSWORD": appleIdPassword,
    "FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD": appSpecific,
    "FASTLANE_SESSION": """
    ---\n- !ruby/object:HTTP::Cookie\n  name: DES5c0ae04fd819eca19df6dfda74a7200b2\n  value: HSARMTKNSRVXWFlatAd+Jdh5c0XIQuAJInDnvymO7+Y2XXz8HdVyBIBIIvyOZqoraHOS4c18rfCCu7ZfVSmnNC2Id6A8wZZnb0lTOdEBDMGryXd2xCWAcXvsUnLeANIYlPxVj/Sb+bC3p7bbSRVX\n  domain: idmsa.apple.com\n  for_domain: true\n  path: "/"\n  secure: true\n  httponly: true\n  expires: \n  max_age: 2592000\n  created_at: &1 2020-03-17 22:45:11.316865000 +01:00\n  accessed_at: *1\n- !ruby/object:HTTP::Cookie\n  name: myacinfo\n  value: DAWTKNV2ecdac1a4f3442973710a93a8747d6c1b42287acc6d093ec1394fc5ce3a97fb191f1445975d97ac0892517a7ab357c47901f42381fe6e29d6cbfdced5123504a4ed808893a28e4c851d1f68511140cfa3cfe7aa7437a2b83edbec203e35f1f9aceaf853a3bf7e625a615a7508167b1cd74c2187548e5834c8c9b20a6aa6f6d42e5a149f94e32b3cdb401a1820de98e50cfb24a4ffeab970945c1fddf6e9adbaae19c642689cfb402c91ffe52c6b6f05306e85a9671787e2a5e70b7a7e42a8944bcefe866b553d61846d4e38695f477d44773f75b8c5de8215190f4055ead5b3df1edfd7e10aac5eae92f5d25c4532479d9b33e209c7b5764319c8a65a95bebb114eefda0a6d5e0a9e95c5d3e89a986c1d68ee9654f1507bbd277a63c530118cd7c4b4035df0852fb344653315bee4b8bc7544970069e07769d2ba3302b48a526dca0d63270b7d282b4b0e8b2791c7fb83968f7ae333d3f6f3130b01b5da65f999b4eb14cf1e0ab407261f9c648fa2aa2432343962623031303336636132306131306138386436353062376531623266666137313935353563MVRYV2\n  domain: apple.com\n  for_domain: true\n  path: "/"\n  secure: true\n  httponly: true\n  expires: \n  max_age: \n  created_at: 2020-03-17 22:45:11.317019000 +01:00\n  accessed_at: 2020-03-17 22:45:11.326561000 +01:00\n- !ruby/object:HTTP::Cookie\n  name: dqsid\n  value: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1ODQ0ODE1MTEsImp0aSI6Ino2LWU1Zk5idDZCVV9OYTM2WUxXbmcifQ.bhSEsmQOO9dLINPdSdOjQhgDOcKGob_24DacNNjbVRA\n  domain: appstoreconnect.apple.com\n  for_domain: false\n  path: "/"\n  secure: true\n  httponly: true\n  expires: \n  max_age: 1799\n  created_at: &2 2020-03-17 22:45:11.830494000 +01:00\n  accessed_at: *2\n
    """
]

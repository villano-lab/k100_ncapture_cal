#!/bin/sh

#standard R66 config, neutrons from PuBe in barrel
#parameters for shieldmat and shieldsize are irrelevant because the
#template doesn't use the generic shield setup
#./condork100Sim_GenericShielding -n 1 -src PuBe -set 0 -ngen 10000000 -template templates/Run66ShieldTest.mac.template -merge -sourcepos 0.0 119.731 -56.515 -shieldsize 40.0 40.0 40.0 -shieldmat Poly -exe
./condork100Sim_GenericShielding -n 10 -src PuBe -set 1 -ngen 1000000 -template templates/Run66Shield_stdLocation_inBarrel.mac.template -merge -sourcepos 0.0 119.731 -64.679 -shieldsize 40.0 40.0 40.0 -shieldmat Poly -exe
./condork100Sim_GenericShielding -n 10 -src PuBe -set 2 -ngen 1000000 -template templates/Run66Shield_stdLocation_outBarrel.mac.template -merge -sourcepos 0.0 119.731 -64.679 -shieldsize 40.0 40.0 40.0 -shieldmat Poly -exe
#./condork100Sim_GenericShielding -n 10 -src PuBe -set 3 -ngen 1000000 -template templates/Run66Shield_nearCryostat.mac.template -merge -sourcepos 23.348 23.348 0.0 -shieldsize 40.0 40.0 40.0 -shieldmat Poly -exe
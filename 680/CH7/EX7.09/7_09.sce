//Problem 7.09:

//initializing the variables:
F1 = 50000; // in lb/h
F2 = 60000; // in lb/h
F3 = 80000; // in lb/h
F4 = 60000; // in lb/h
F5 = 40000; // in lb/h
F6 = 35000; // in lb/h
Cp1 = 0.65; // in Btu/lb.degF
Cp2 = 0.58; // in Btu/lb.degF
Cp3 = 0.78; // in Btu/lb.degF
Cp4 = 0.70; // in Btu/lb.degF
Cp5 = 0.52; // in Btu/lb.degF
Cp6 = 0.60; // in Btu/lb.degF
Tin1 = 70; // in deg F
Tin2 = 120; // in deg F
Tin3 = 90; // in deg F
Tin4 = 420; // in deg F
Tin5 = 300; // in deg F
Tin6 = 240; // in deg F
Tout1 = 300; // in deg F
Tout2 = 310; // in deg F
Tout3 = 250; // in deg F
Tout4 = 120; // in deg F
Tout5 = 100; // in deg F
Tout6 = 90; // in deg F

//calculation:
Duty1 = F1*Cp1*(Tout1 - Tin1)
Duty2 = F2*Cp2*(Tout2 - Tin2)
Duty3 = F3*Cp3*(Tout3 - Tin3)
Duty4 = F4*Cp4*abs(Tout4 - Tin4)
Duty5 = F5*Cp5*abs(Tout5 - Tin5)
Duty6 = F6*Cp6*abs(Tout6 - Tin6)
heat = Duty1 + Duty2 + Duty3
cool = Duty4 + Duty5 + Duty6
steam = heat - cool

printf("\n\nResult\n\n")
printf("\n As a minimum %.0f Btu/h will have to be supplied by steam or another hot medium",steam)
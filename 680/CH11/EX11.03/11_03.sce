//Problem 11.03:

//initializing the variables:
T1 = 120; // in deg F
T2 = 560; // in deg F
mdte = 9000; // in lb/h
MW = 30
MWH2O = 18
R = 0.73

//calculation:
//from fig. 11.2
Hout = 0.0814 // lb H2O/lb bone-dry air
mdtH2O = Hout*mdte
mdtt = mdtH2O + mdte
Yg = (mdte/MW)/(mdtH2O/MWH2O + mdte/MW)
Ywv = (mdtH2O/MWH2O)/(mdtH2O/MWH2O + mdte/MW)
MWB = Yg*MW + Ywv*MWH2O
Pqa = mdtt*R*(460+140)/MWB

printf("\n\nResult\n\n")
printf("\n the moisture content is %.4f lb H2O/lb dry air, the mass flow rate is %.0f lb/h,the volumetric flow rate of the discharge gas is %.2E ft3/h",Hout, mdtH2O, Pqa)
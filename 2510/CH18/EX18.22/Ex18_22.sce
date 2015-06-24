//Variable declaration:
//From example 18.21:
m = 144206                      //Mass flow rate of flue gas (lb/h)
cp = 0.3                        //Average heat capacities of the flue gas (Btu/lb F)
T1 = 2050                       //Initial temperature of gas ( F)
T2 = 180                        //Final temperature of gas ( F)
T3 = 60                         //Ambient air temperature ( F)
U = 1.5                         //Overall heat transfer coefficient for cooler (Btu/h.ft^2. F)
MW = 28.27                      //Molecular weight of gas
R = 379                         //Universal gas constant (psia.ft^3/lbmol. R)
v = 60                          //Duct or pipe velcity at inlet (2050 F) (ft/s)
pi = %pi

//Calculation:
Q = m*cp*(T1-T2)                //Heat duty (Btu/h)
DTlm = ((T1-T3)-(T2-T3))/log((T1-T3)/(T2-T3))   //Log-mean temperature difference ( F)
A1 = round(Q * 10**-5)/10**-5/(U*round(DTlm))                 //Radiative surface area (ft^2)
q = m*R*(T1+460)/(T3+460)/MW    //Volumetric flow at inlet (ft^3/h)
A2 = q/(v*3600)                 //Duct area (ft^2)
D = sqrt(A2*4/pi)               //Duct diameter (ft)
L = A1/(pi*D)                   //Length of required heat exchange ducting (ft)
A1 = round(A1*10**-1)/10**-1

//Result:
printf(" The radiative surface area required is : %f ft^2 .",A1)
printf(" The length of required heat exchange ducting is : %.0f ft .",L)

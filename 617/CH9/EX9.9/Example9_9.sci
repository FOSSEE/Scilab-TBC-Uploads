clc();
clear;

// To determine the value of product of overall heat transfer and the total area

To1=140;                                // inlet temperature of oil in degF
To2=90;                                 // Outlet temperature of oil in degf
Cpo=0.5;                                // Specific heat capacity in Btu/lb-degf
Tw1=60;                                 // Inlet tempearture of water in degF
Tw2=80;                                 // Outlet temperature of water in degF
mo=2000;                                // Mass flow rate of oil in lb/hr
q=mo*Cpo*(To1-To2);                     // Heat transferred in Btu/hr
Cpw=1;                                  // Heat capacity of water in Btu/hr
mw=q/(Cpw*(Tw2-Tw1));                   // Mass flow rate in lb/hr
E1=(Tw1-Tw2)/(Tw1-To2);                 // Effective ratio

// Seeing the effective ratio and mass flow rate ratio, from the graph we get UA
UA=1.15*mo*Cpo;
printf("The product of overall heat transfer and total area is %d Btu/hr-degF",UA);

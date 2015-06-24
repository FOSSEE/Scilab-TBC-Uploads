clc();
clear;

// To calculate the terminal temperature of oil and water 

To1=160;                               // inlet temperature of oil in degF
Cpo=0.5;                               // Specific heat capacity in Btu/lb-degf
Tw1=60;                                // Inlet temperature of water in degF
mo=1000;                               // Mass flow rate of oil in lb/hr
mw=2500;                               // Mass flow rate of water in lb/hr
Cpw=1;                                 // Heat capacity of water in Btu/hr
X=mo*Cpo/(mw*Cpw);                     // Ratio of flow rates 
UA=1.15*mo*Cpo;
B=UA/mo*Cpo;

// from the graph, we can locate the point of A and B And corresponding effectiveness ratio
E=0.86;                                // Effectiveness ratio
To2=To1-E*(To1-Tw1);                   // Outlet temperature of oil in degF
printf("The outlet temperature of oil is %d degF \n",To2);

q=mo*Cpo*(To1-To2);                     // Heat transferred in Btu/hr
Tw2=Tw1+(q/(mw*Cpw));                   // Outlet temperature of oil in degF
printf(" The outlet tempearture of water is %.1f degF",Tw2);



     
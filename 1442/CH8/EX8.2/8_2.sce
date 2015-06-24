clc
//initialisation of variables
Q= 666.78 //kJ
T= 0 //C
Th= 20 //C
//CALCULATIONS
Ssys= Q/(273.15+T)
Qh= Q*((273.15+Th)/(273.15+T))
Senvir= -Qh/(273.15+Th)
Stotal= Ssys+Senvir
//RESULTS
printf (' change in entropy in sysytem = %.4f kJ/K',Ssys)
printf (' \n change in entropy in environment = %.4f kJ/K',Senvir)
printf (' \n total change in entropy = %.f kJ/K',Stotal)

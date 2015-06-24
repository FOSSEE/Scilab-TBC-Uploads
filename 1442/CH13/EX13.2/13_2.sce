clc
//initialisation of variables
S1= 6.539 //kJ/kg K
S2= 6.7664 //kJ/kg K
v1= 0.10976 //m^3
v2= 0.08700 //m^3
P= 3 //Mpa
P1= 2 //Mpa
T= 350 //K
T1= 250 //K
S3= 3.1741 //kJ/kg K
S4= 3.2071 //kJ/kg K
P2= 30 //Mpa
P3= 20 //Mpa
v3= 0.0014217 //m^3
v4= 0.0012860 //m^3
T2= 320 //K
T3= 280 //K
//CALCULATIONS
r= (S1-S2)/(P*10^3-P1*10^3)
r1= (v1-v2)/(T-T1)
R= (S3-S4)/(P2*10^3-P3*10^3)
R1= (v3-v4)/(T2-T3)
//RESULTS
printf (' entropy wrt pressre= %.7f kJ/kg K kpa',r)
printf (' \n entropy wrt pressre= %.e kJ/kg K kpa',R)
printf (' \n volume wrt temperature= %.7f m^3/kg K ',r1)
printf (' \n volume wrt temperature= %.2e m^3/kg K ',R1)

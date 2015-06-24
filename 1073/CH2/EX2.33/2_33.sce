

clc;
clear;
//Example 2.33
//Determine Temperature at the outer surface of wall and convective conductance on the outer wall
    //Temperature of hot gas:
T1=2273    //K
    //Ambient aur temperature:
T4=318    //K
    //Heat flow by radiation from gases to inside surface of wall:
Qr1_by_A=23260    //[W/sq m]
    //Heat transfer coefficient on inside wall:
hi=11.63    //W/sq m.K
    //Thermal conductivity of wall:
K=58    //W.sq m/K
    //Heat flow by radiation from external surface to ambient:
Qr4_by_A=9300   //W/sq m.
    //Inside Wall temperature:
T2=1273    //K

Qr1=Qr1_by_A    //W  for
A=1    //sq m

Qc1_by_A=hi*(T1-T2)    //W/sq m
Qc1=Qc1_by_A    //for A=1 sq m
    //Thermal resistance:
R=1/K    //K/W per sq m
//Now Q=(T2-T3)/R,i.e 
//External wall temp T3=T2-Q*R
//Q entering wall=
Q_enter=Qr1+Qc1    //W
T3=T2-Q_enter*R    //K
T3=673      //Approximate
//Heat loss due to convection:
Qc4_by_A=Q_enter-Qr4_by_A    //W/sq m
//Qc4_by_A=h0*(T3-T4)
//or  h0=Qc4_by_A/(T3-T4)
h0=Qc4_by_A/(T3-T4)    //W/sq m.K
//Result
printf("Convective conductance is: %f W/sq m.K",h0)

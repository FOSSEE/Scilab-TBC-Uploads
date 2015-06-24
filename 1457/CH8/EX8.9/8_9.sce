clc
//Initialization of variables
d1=6/12 //ft
d2=4/12 //ft
d3=8/12 //ft
l1=2000 //ft
l2=1600 //ft
l3=4000 //ft
f1=0.020
f2=0.032
f3=0.024
El1=200
El2=50
El3=120
g=32.2
//calculations
Vc=sqrt(2*g*(El1-El2)/288.9)
Qc=%pi/4 *d3^2 *Vc
Va=1.346*Vc
Qa=%pi/4 *d1^2 *Va
Vb=(d3^2 *Vc - d1^2 *Va)/d2^2
Qb=%pi/4 *d2^2 *Vb
P=62.4/144 *(El1 - El3 - f1*l1/d1 *Va^2 /(2*g))
//results
printf("Flowrate at A = %.3f cfs",Qa)
printf("\nFlowrate at B = %.3f cfs",Qb)
printf("\nFlowrate at C = %.3f cfs",Qc)
printf("\nPressure at P = %.2f psi",P)

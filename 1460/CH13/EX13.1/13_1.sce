clc
//initialization of variables
v=2000 //ft/sec
P=14.7 //lb/in^2
g=1.4
T=10+460 //R
//calculations
c=sqrt(g*32.2*53.3*T)
Nm=v/c
Tratio=1+ (g-1)/2 *Nm^2
Tt=Tratio*T
Pratio=(Tratio)^(g/(g-1))
Pt=Pratio*P
//results
printf("Stagnation temperature = %d R",Tt)
printf("\n Stagnation pressure = %.1f lb/in^2",Pt)
//The answers are a bit different due to rounding off error.

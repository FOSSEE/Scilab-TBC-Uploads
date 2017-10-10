clear
clc
//Example 13.3 ANALYSIS OF AN ORIFICE METER
g=9.81; //[m/s^2]
l=0.25; //deflection[m]
S=13.6; //specific gravity of Hg
h=l*(S-1) //piezometric head[m]
d=0.15; //[m]
D=0.24; //[m]
Ao=%pi*d^2/4 //[m^2]
A1=%pi*D^2/4 //[m^2]
v=10^-6; //[m^2/s]
//Flow coefficient
ReK=(d/v)*sqrt(2*g*h) //ReK=Re/K
//From fig.13.14, for Re/K, d/D=0.625
K=0.66;
Q=K*Ao*sqrt(2*g*h) //[m^3/s]
printf("\nThe discharge in the system = %.3f m^3/s.\n",Q)
Cv=0.98;
//K=Cv*Cc/(1-(Cc*Ao/A1)^2)
P=[K*(Ao/A1)^2 Cv -K] //polynomial in Cc
q=roots(P) //roots of P
Cc=q(2) //positive root
V1=Q/A1 //[m/s]
V2=Q/(Cc*Ao) //[m/s]
//Head loss
hL=(V2-V1)^2/(2*g) //[m]
printf("\nThe head loss produced by the orifice = %.2f m.\n",hL)
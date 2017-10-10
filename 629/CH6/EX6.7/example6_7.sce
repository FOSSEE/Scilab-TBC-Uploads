clear
clc
//Example 6.7 WATER FLOW THROUGH REDUCING BEND
d1=0.3; //[m]
d2=0.15; //[m]
A1=%pi*d1^2/4 //[m^2]
A2=%pi*d2^2/4 //[m^2]
rho=1000; //[kg/m^3]
Q=0.25; //[m^3/s]
v1=Q/A1 //inlet speed[m/s]
v2=Q/A2 //outlet speed[m/s]
p1=150; //[kPa]
g_w=9810; //specific weight of water
del_z=0.325; //(del_z=z1-z2)[m]
//Bernoulli equation, p1+(rho*v1^2/2)+(g_w*z1)=p2+(rho*v2^2/2)+(g_w*z2)
p2=p1+(rho*(v1^2-v2^2)/2+g_w*del_z)*10^-3 //[kPa]
//Pressure forces
Fp=(p1*A1)+(p2*A2) //[kN]
//Momentum flux
Fm=rho*Q*(v1+v2)*10^-3 //[kN]
Wb=500; //weight of metal in the bend[N]
V=0.1; //bend volume[m^3]
Wf=g_w*V //weight of water[N]
//Reaction force components
Rx=-Fp-Fm //[kN]
Rz=(Wb+Wf)*10^-3 //[kN]
printf("\n The components of force, F required to hold the bend in place are Fx = %.1f kN, Fz = %.2f kN.\n",Rx,Rz)
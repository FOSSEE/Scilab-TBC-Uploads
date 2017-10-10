// Implementation of example 5.1
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

//Work done W, Velocity V, Pressure p, Specific volume v, Height Z
V1=7 // m/sec
p1=100 // kPa
v1=0.95 // m^3/kg
Q=-58 // kW
V2=5 // m/sec
p2=700 // kPa
v2=0.19 // m^3/kg
w=0.5 // kg/sec
dU=90 // kJ/kg (since its given that u2=u1+90)
// steady flow energy equation is w(u1+p1v1+V1^2/2+Z1g)+dQ/dt=w(u2+p2v2+V2^2/2+Z2g)+dW/dt
W=-w*[dU+(p2*v2-p1*v1)+(V2*V2-V1*V1)/2000]+Q;
printf("rate of work input = %.2f kW \n",W);
temp=(v1*V2)/(v2*V1);
ratio=sqrt(temp);
printf("ratio of diameter is = %.2f",ratio);
// end
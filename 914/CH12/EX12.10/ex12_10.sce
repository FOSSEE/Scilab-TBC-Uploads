clc;
warning("off");
printf("\n\n example12.10 - pg590");
// given
T=293.15;  //[K]
pp=999;  //[kg/m^3] - density of water
mu=0.01817*10^-3;  //[kg/m*sec] - viscosity of air
p=1.205;  //[kg/m^3] - density of air
d=5*10^-6;  //[m] - particle diameter
g=9.80;  //[m/sec^2]
rp=d/2;
Ut=((2*g*(rp^2))*(pp-p))/(9*mu);
Nre=(d*Ut*p)/(mu);
// clearly the flow is in the stokes law region at this low reynolds number;therefore , the drag force is
Fp=6*%pi*mu*rp*Ut;
printf("\n\n The drag force is \n Fp = %e N",Fp);



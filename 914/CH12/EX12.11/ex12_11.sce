clc;
warning("off");
printf("\n\n example12.11 - pg591");
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
t=((-2*(rp^2)*pp))/(9*mu)*(log(1-0.99));
printf("\n\n Time for the drop of water in previous example from an initial velocity of zero to 0.99*Ut is \n t = %e sec",t);
printf("\n\n In other words, the drop accelerates almost instantaneously to its terminal velocity");

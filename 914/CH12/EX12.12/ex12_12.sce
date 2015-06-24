clc;
warning("off");
printf("\n\n example12.12 - pg 594");
// given
pp=1.13*10^4;  //[kg/m^3] - density of lead particle
p=1.22;  //[kg/m^3] - density of air
g=9.80;  //[m/sec^2] - acceleration due to gravity
d=2*10^-3;  //[m] - diameter of particle
mu=1.81*10^-5;  //[kg/m*sec] - viscosity of air
// let us assume
Cd=0.44;
Ut=((4*d*g*(pp-p))/(3*p*Cd))^(1/2);
disp(Ut)
Nre=(Ut*d*p)/(mu);
// from fig 12,16 value of Cd is
Cd=0.4;
Ut=((4*d*g*(pp-p))/(3*p*Cd))^(1/2);
Nre=(Ut*d*p)/(mu);
// Within the readibility of the chart Cd is unchanged and therefore the above obtained Cd is the final answer
printf("\n\n The terminal velocity is \n Ut = %f m/sec",Ut);

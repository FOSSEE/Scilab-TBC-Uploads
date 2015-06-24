//Exa 3.5
clc;
clear;
close;
//given data
format('v',13)
w=1;// in meter
L=2.5*10^-2;// in meter
t=0.8*10^-3;// in meter
l=1;// in meter
T_0=150;// in degree C
T_infinite=40;// in degree C
h=20;// in W/m^2K
k=65;// in W/mK (for 18.8 steel)
Ac=w*t;
d=5*10^-2;// Cylinder dia in meter
rho=2*(w+t);
rho=floor(rho);

m=sqrt(h*rho/(k*Ac));
mL=m*L;
// heat transfer rate from 12 fins
q_fin=12*k*Ac*m*(T_0-T_infinite)*[(tanh(m*L)+h/(k*m)  )/(1+h/(m*k)*tanh(m*L))];
disp("Heat transfer rate from 12 fins si : "+string(q_fin)+" watt");
Au=%pi*d*l-12*w*t;
qu=h*Au*(T_0-T_infinite);
disp("Now heat transfer from unfinned surface area is : "+string(qu)+" watt");
q=q_fin+qu;
disp("Total head transfer rate from the cylinder is : "+string(q)+" watt");




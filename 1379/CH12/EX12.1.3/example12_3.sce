

//example 12.3 
clc; funcprot(0);
// Initialization of Variable
rho=1.22;//density of air
pi=3.1428;
rhos=1400;//density of coal
mu=1.73/10^5;
g=9.81;
U=25;
Ut=2.80;
l=50;
ms=1.2;//mass flow rate
mg=ms/10;//mass flow of gas
//calculation
Qs=ms/rhos;//flow of solid
Qg=mg/rho;//flow of gas
us=U-Ut;//actual linear velocity
A=Qg/U;
Us=Qs/A;//solid velocity
e=(us-Us)/us;
d=sqrt(4*A/pi);
function [y ]= fround(x,n)
// fround(x,n)
// Round the floating point numbers x to n decimal places
// x may be a vector or matrix// n is the integer number of places to round to
y=round(x*10^n)/10^n;
endfunction
[d]=fround(d,4);
Re=d*rho*U/mu;
//using moody's chart
phi=2.1/1000;//friction factor
P1=2*phi*U^2*l*rho/d*2;
f=0.05/us;
P2=2*l*f*(0.0098)*rhos*us^2/d;
P2=fround(P2/1000,1)*1000
delP=rho*e*U^2+rhos*(0.0098)*us^2+P1+P2;
//disp(delP,"the pressure difference in kN/m^2 ");
printf('The Pressure value in (kN/m^2) is %.1f',delP/1000);



//example 12.4 
clc; funcprot(0);
// Initialization of Variable
rho=1.22;//density of air
pi=3.1428;
rhos=1090;//density of steel
mu=1.73/10^5;
g=9.81;
d=14.5/100;
Qg=0.4;
Qs=5000/3600/1090;
Ut=6.5;
ar=0.046/1000;//absolute roughness
l=18.5;//length
//calculation
function [y ]= fround(x,n)
// fround(x,n)
// Round the floating point numbers x to n decimal places
// x may be a vector or matrix// n is the integer number of places to round to
y=round(x*10^n)/10^n;
endfunction
Us=Qs/pi/d^2*4;//solid velocity
U=Qg/pi/d^2*4;
us=U-Ut;//actual linear velocity
e=1-Us/us;
e=fround(e,4);
Re=rho*U*d/mu;
rr=ar/d;//relative roughness
//using moody's diagram
phi=2.08/1000;
P1=2*phi*U^2*l*rho/d*2;
f=0.05/us;
P2=2*l*f*(1-e)*rhos*us^2/d;
P2=fround(P2/1000,2)*1000;
delP=rhos*(1-e)*us^2+rhos*(1-e)*g*l+P1+P2;
//disp(delP,"the pressure difference in kN/m^2 ");
printf('The Pressure value in (kN/m^2) is %.2f',delP/1000)

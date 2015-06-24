// chapter 2
// example 2.4
// Find the value of series resistor and average power
// page-31
clear;
clc;
// given
// Vg=1.5+8*Ig; // relation between Vg and Ig
Vgs=12; // in V
t=50; // in us
D=0.2; // duty cucle
P=5; // in W
// calculate
// since Vgs=Ig*Rg+Vg=Ig*Rg+1.5+8*Ig or
// Vgs=(Rg+8)*Ig+1.5,  (i)
// since P=Vg*Ig and therefore
// P=(1.5+8*Ig)*Ig ,
// P=1.5*Ig+8*Ig^2. 
// This is quadratic equation and can be written as
// 8*Ig^2+1.5*Ig-P=0 solving it 
Ig1=(-1.5+sqrt(1.5^2-(4*8*(-P))))/(2*8);
Ig2=(-1.5-sqrt(1.5^2-(4*8*(-P))))/(2*8);
if Ig1>0 then
    Ig=Ig1
else
    Ig=Ig2
end
Rg=((Vgs-1.5)/Ig)-8; // calculation of series resistance
Pavg=P*D; // calculation of average power
printf("\nThe series resistance is \t Rg=%.f ohm",Rg);
printf("\nThe average power is \t\t Pavg=%.f W",Pavg);
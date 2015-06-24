// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 6, Example 3")
//Oil of specific gravity (sg)=0.90 is discharged at a rate(mdot)=3kg/s under a pressure difference dp=10KN/m^2 over a length dz=5m of a pipe having a diameter(D) of 50mm.
dp=10*10^3;//in N/m^2
dz=5;
D=0.05;//in metre
mdot=3;
sg=0.90;
//X=dp/dz is the rate of change of pressure
disp("The rate of change of pressure with respect to length in N/m^3")
X=dp/dz
//Flow rate is Q
disp("Flow rate(Q) in m^3/s is)")
Q=mdot/(sg*10^3)
//The viscosity of oil is mu=(pi*D^4*X)/(128*Q*dz)
disp("The viscosity of oil(mu)in kg/(m*s)")
mu=(%pi*D^4*X)/(128*Q)






















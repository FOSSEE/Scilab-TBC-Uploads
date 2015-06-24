// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 7, Example 6")
//An aircraft is moving at a velocity of Uinf=150m/s in air at an altitude where the pressure is 0.7bar and the temprature is Tinf=-5°C.
Tinf=-5;
Uinf=150;
//The top surface of the wing absorbs solar radiation at a rate of Qr=900W/m^2.
Qr=900;
//Considering the wing as a flat plate of length(L)=2m and to be of solid construction with a single uniform surface temprature .
L=2;
//The properties of air at 268K and 0.7 bar are conductivity(k=0.024W/(m*K)),kinematic viscosity(nu=2*10^-5m^2/s),Prandtl number(Pr=0.72)
k=0.024;
nu=2*10^-5;
Pr=0.72;
//ReL is reynolds number
disp("Reynolds number is")
ReL=Uinf*L/nu
//Rec is critical reynolds number
disp("Since ReL>Rec(=5*10^5) the flow is approximated as turbulent over the entire surface of the wing ")
//Nusselt number is given by Nux=0.0308*ReL^(4/5)*Pr^(1/3)
Nux=0.0308*ReL^(4/5)*Pr^(1/3);
//NubarL is average nusselt number over length L
disp("Nusselt number is ")
NubarL=(5/4)*Nux
//Average heat transfer coefficient is given by hbarL=(k/L)*NubarL
disp("Average heat transfer coefficient in W/(m^2*K) is")
hbarL=(k/L)*NubarL
//From an energy balance the airfoil at steady state,Qr*As=2*hbarL*As*(Tw-Tinf) where Qr=radiation flux,As=upper or lower surface area.
//Therefore we can write Surface temprature of wing, Tw=Tinf+(Qr/(2*hbarL))
disp("Surface temprature of wing in kelvin is")
Tw=(273+Tinf)+(Qr/(2*hbarL))
















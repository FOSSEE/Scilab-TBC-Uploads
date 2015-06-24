// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 1, Example 6")
//The temprature of the plate(Ts) is 225°C
//The ambient temprature (Tinf) is 25°C
//The change in plate temprature with time is dT/dt=-.02K/s
//The plate area (A)=.1m^2 , mass(m)= 4Kg and specific heat(cp)=2.8KJ/(Kg*K)
//The average free convective heat coefficient(hbr) is to be found
Ts=225;
Tinf=25;
//|dT/dt|=0.2,because it is modulus function and it converts negative values to positive value.
//Let |dT/dt|=X
X=0.02;
A=.1;
m=4;
cp=2.8;
disp("The rate of heat transfer from the plate is given by Q=hbr*A*(Ts-Tinf)")
disp("The rate of heat transfer can also be written in the form of Q=m*cp*|dT/dt| from an energy balance.")
disp("Equating the above two equations we get hbr=(m*cp*|dT/dt|)/(A*(Ts-Tinf)) in W/(m^2°C)")
hbr=(m*cp*10^3*X)/(A*(Ts-Tinf))
















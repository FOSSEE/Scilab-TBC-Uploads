// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 5, Example 8")
//Eletric current passes through a L=0.5m long horizontal wire of D=0.1mm diameter.
L=0.5;
D=0.1*10^-3;
//The wire is to be maintained at temprature,Twire=400K and the air is at temprature,Tair=300K.
Twire=400;
Tair=300;
//The resistance of the wire(R) is 0.012ohm per meter.Nusselt number(NuL) over the length of wire to be 0.4.
NuL=0.4;
R=0.012;
//At mean temprature of Tf=350K, The thermal conductivity of air is k=0.03W/(m*K)
k=0.03;
//Nusselt number is NuL=hbar*D/k
//hbar is the heat flux
disp("The heat flux in W/(m^2*K) is")
hbar=NuL*k/D
//Q is the heat loss from the wire
disp("The heat loss from the wire is Q=hbar*pi*D*L*(Twire-Tair) in Watt")
Q=hbar*%pi*D*L*(Twire-Tair)
//At steady state the ohmic loss in the wire equals the heat loss from its surface Therfore I^2*R=Q
//I is the current flow.
disp("The current in Ampere is")
I=(Q/(R*L))^0.5























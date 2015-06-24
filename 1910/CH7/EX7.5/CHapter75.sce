// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 7, Example 5")
//A flat plate of width B=1m is maintained at a uniform surface temprtaure(Tw)=225°C
Tw=225;
B=1;
//Heating is done by rectangular modules of thickness t=10mm and length l=40mm.
t=10;
l=40;
//atmospheric air at temprature,Tinf=25°C flows over the plate at velocity(Uinf)=30m/s.
Tinf=25;
Uinf=30;
//The thermophysical properties of module are conductivity(km=5.2W/(m*K)),specific heat(cp=320J/(kg/K)),density(rho=2300kg/m^3).
km=5.2;
cp=320;
rho=2300;
//Assume the air properties at the film temprature of 125°C conductivity(ka=0.031W/(m*K)),kinematic viscosity(nu=22*10^-6m^2/s),Prandtl number(Pr=0.7)
ka=0.031;
nu=22*10^-6;
Pr=0.7;
//Module is placed at a distance of 800mm from the leading edge
//The distance from leading edge to the centre-line of the module,L=800+20=820mm.
L=0.82;//in metre
//ReL is the reynolds number 
disp("Reynolds number is")
ReL=(Uinf*L)/nu
disp("Therefore the flow is turbulent over the module ")
//The local heat transfer coefficient at L is calculated using hL=(k/L)*0.0296*(ReL)^(4/5)*(Pr)^(1/3)
disp("The local heat transfer coefficient at L in W/(m^2*K)is")
hL=(ka/L)*0.0296*(ReL)^(4/5)*(Pr)^(1/3)
//We consider that the local heat transfer coefficient at L=0.82m remains the same over the module which extends from L=0.80m to 0.84m 
//If qm be the power generation in W/m^2 within the module ,we can write from energy balance qm*(t/1000)*(l/1000)*(B)=hbarL*(t/1000)*(B)*(Tw-Tinf)
disp("The required power generation in W/m^3 is")
qm=(hL*(l/1000)*(B)*(Tw-Tinf))/((t/1000)*(l/1000)*(B))



















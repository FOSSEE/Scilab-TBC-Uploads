clear;
clc;

//Example14.10[Mass Convection inside a Circular Pipe]
//Given:-
D=0.015;//Inner Diameter[m]
T=300;//Temp of air[K]
P=1;//Pressure of air[atm]
v=1.2;//Average velocity of air[m/s]
nu=1.58*10^(-5);//Viscosity[m^2/s]
//Solution:-
//Water is Species Aand air is species B
D_AB=(1.87*10^(-10))*(T^2.072)/P;//[m^2/s]
disp("m^2/s",D_AB,"The mass diffusivity of water vapor in air at 300K is")
Re=v*D/nu;
disp(round(Re),"The Reynolds number for internal flow is")
if(Re<2300) then
    disp("laminar Flow")
    Sh=3.66;//Sherwood number equals to Nusselt number
    h_mass=Sh*D_AB/D;//[m/s]
    disp("m/s",h_mass,"The mass transfer coefficient is")
else
    disp("Flow is not laminar")
end

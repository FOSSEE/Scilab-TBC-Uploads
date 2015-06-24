// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 7, Example 9")
//Air at one atmospheric pressure and temprature(Tbi=75°C) enters a tube of internal diameter(D)=4.0mm with average velocity(U)=2m/s
Tbi=75;
D=4*10^-3;//in metre
U=2;
//The tube length is L=1.0m and a constant heat flux is imposed by the tube surface on the air over the entire length.
L=1;
//An exit bulk mean temprature(Tbo)=125°C is required.
Tbo=125;
//The properties of air 100°C are density(rho=0.95kg/m^3),Prandtl number(Pr=0.70),conductivity(k=0.03W/(m*K)),viscosity(mu=2.18*10^-5kg/(m*s)),specific heat(cp=1.01kJ/(kg/K))
rho=0.95;
Pr=0.70;
k=0.03;
mu=2.18*10^-5;
cp=1.01*10^3;
//Re is reynolds number
disp("Reynold number is")
Re=rho*U*D/mu
//Leh is the hydrodynamic entrance length
disp("Therefore the flow is laminar.The hydrodynamic entrance length in m is")
Leh=0.05*Re*D
//Let is the thermal entrance length
disp("The thermal entrance length in m is")
Let=0.05*Re*Pr*D
//The length of tube is given as 1m.A reasonable approach is to consider the flow to be fully developed for both velocity and tempratures over the entire profile lengths.
//For a fully developed flow with constant surface heat flux,Nusselt number is Nu=4.36
Nu=4.36;
//h is the heat transfer coefficient
disp("The heat transfer coefficient in W/(m^2*K) is ")
h=Nu*(k/D)
//Here h=hL Since the heat transfer coefficient is constant over the entire length of tube.
//hL is the local heat transfer coefficient
hL=h;
//from an energy balance qw*pi*D*L=mdot*cp*(Tbo-Tbi)
//mdot is mass flow rate
disp("The mass flow rate of air in kg/s is")
mdot=rho*(%pi/4)*D^2*U
//qw is the constant surface heat flux
disp("Therefore the constant surface heat flux qw in W/m^2 is")
qw=[mdot*cp*(Tbo-Tbi)]/(%pi*D*L)
//Let Twe be the surface temprature at the exit plane.Then we can write hL*(Twe-Tbo)=qw
disp("The tube surface temprature at the exit plane in °C is ")
Twe=Tbo+(qw/hL)
















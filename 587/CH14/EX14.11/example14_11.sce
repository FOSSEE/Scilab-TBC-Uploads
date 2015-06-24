clear;
clc;

//Example14.11[Analogy between Heat and Mass Transfer]
//Given:-
//Napthalene is species A and air is species B
M_A=128.2;//Molar Mass of A[kg/kmol]
M_air=29;//Molar mass of B[kg/kmol]
P=101325;//Pressure of Air[Pa]
T=298;//Temperature[K]
D_AB=0.61*10^(-5);//[m^2/s]
v=2;//Stream velocity[m/s]
rho=1.184;//Density of air[kg/m^3]
Cp=1007;//Specific Heat[J/kg.K]
a=2.141*10^(-5);//Absorptivity[m^2/s]
w_inf=0;//Mass fraction of napthalene at free stream conditions 
P_As=11;//Vapor Pressure of Napthalene at surface[Pa]
mA=12*10^(-3);//Mass of napthalene sublimated[kg]
delta_t=15*60;//time of sublimation[s]
As=0.3;//surface area of the body[m^2]
//Solution:-
w_As=(P_As/P)*(M_A/M_air);
disp(w_As,"Mass fraction at the surface is")
m_evap=mA/delta_t;//[kg/s]
disp("kg/s",m_evap,"The rate of evaporation of napthalene is")
h_mass=m_evap/(rho*As*(w_As-w_inf));
disp("m/s",h_mass,"The mass convection coefficient is")
//Using analogy between heat and mass transfer
h_heat=rho*Cp*h_mass*((a/D_AB)^(2/3));//[W/m^2.degree Celcius]
disp("W/m^2.degree Celcius",round(h_heat),"The average heat transfer coefficient is")

clear;
clc;

//Example7.7[Preheating Air by Geothermal Water in a Tube Bank]
//Given:-
Ta_in=20;//Temp of air whileentering the duct[degree Celcius]
v=4.5;//mean velocity[m/s]
T_tw=120;//Temp of geothermal water[degree Celcius]
od=0.015;//Outer Diameter of tubes[m]
SL=0.05,ST=0.05;//Longitudinal and transverse pitches[m]
//Properties of air at mean temp
k=0.02808;//[W/m.K]
rho=1.059;//[kg/m^3]
Cp=1007;//[J/kg.K]
Pr=0.7202;//Prandtl no
Pr_s=0.7073;//Prandtl no at temp = 120 degree C
mu=2.008*10^(-5);//Viscosity[kg/m.s]
rho_in=1.204;//density of air at inlet conditions[kg/m^3]
//Solution:-
v_max=(ST*v)/(ST-od);//maximu velocity[m/s]
Re=rho*v_max*od/mu;//Reynolds Number
disp(Re,"Reynolds number is")
Nu=0.27*(Re^(0.63))*(Pr^(0.36))*((Pr/Pr_s)^0.25);
disp(Nu,"The nusselt number is")
Nl=6;//No of rows of tubes
Nt=10;//No of tubes in each row
F=0.945;//For Nl=6, correction factor 
Nu_Nl=F*Nu;
h=Nu_Nl*k/od;//[W/m^2.degree Celcius]
N=Nl*Nt;//Total no of tubes
//For unit tube length
As=N*%pi*od*1;//[m^2]
m=rho_in*v*(Nt*ST*1);//[kg/s]
disp("kg/s",m,"Mass flow rate of air is")
Te=T_tw-((T_tw-Ta_in)*exp((-As*h)/(m*Cp)));//[degree Celcius]
disp("degree Celcius",Te,"Fluid exit temperature is")
T_ln=(((T_tw-Te)-(T_tw-Ta_in))/(log((T_tw-Te)/(T_tw-Ta_in))));//[degree Celcius]
disp("degree Celcius",T_ln,"Log mean temperature difference is")
Q=h*As*T_ln;//[W]
disp("W",Q,"Rate of heat transfer is")
//For given Re and SL/od ratio friction coefficient is
f=0.16;
delta_P=Nl*f*rho*(v_max^2)/2;//[Pa]
disp("Pa",delta_P,"The pressure drop across the tube bank is")

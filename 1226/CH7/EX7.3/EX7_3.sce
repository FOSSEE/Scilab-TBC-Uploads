clc;funcprot(0)//EXAMPLE 7.3

//Initializing the variables
n=4;..............//No of cylinders
d=5;.............//diameter of orifice in cm
dsi=d/100;..........// diameter in m
Cd=0.6;.............//Co-efficient of discharge
D=10;..............//Engine bore in cm
Dsi=d/100;............//Engine bore in m
L=12;................//Engine stroke in cm
Lsi=L/100;............//Engine stroke in m
N=1200;...............//Engine rpm
hw=0.046;............//Pressure drop across orifice in m of water
T = 17;..........//Ambient Temparature in Degree Celsius
Tk = T+273;..........// Ambient Temperature in Kelvin
Pbar = 1;.............// Ambient pressure in bar
Ppa = 1 * (10^5);.......//Ambient pressure in Pascal
R = 287;.............// Gas constant in J/kg.K
rhow = 1000;............//Density of water in kg/m^3
g=9.81;...............//Acceleration due to gravity
//Calculations

rhoa= Ppa/(R*Tk);.........//Density of air
ha= (hw*rhow)/rhoa;
av= sqrt(2*g*ha);.............//Air velocity
area = (%pi/4)*(dsi^2);
Vact = Cd*area*av;.............// V actual
Vswt = n*(%pi/4)*(Dsi^2)*Lsi*(N/60*2);
eff = Vact/Vswt;...............//Volumetric efficiency
disp (eff,"The volumetric efficiency based on the free air condition : ")

clc;funcprot(0)//EXAMPLE 7.5

//Initializing the variables
n=6;................//No of cylinders
vsi=730*(10^(-6));..........//Piston displacement per cylinder in m^3
BP=80;.............//Power produced per cylinder in kW
N=3100;...........//Engine rpm
C=44*(10^6);...........//Calorific value of petrol in J/kg
Pc=28;........//Petrol consumed per hour in kg
afr = 13/1;.......//air fuel ratio
pi=0.88*(10^5);..............//Intake pressure in pa
T=300;............//Intake temperature in Kelvin
R = 287;.........//gas constant in J/kg.K
//calculations
ma = (Pc*afr)/60;...........//air comsumed
rhoa = pi/(R*T);.......//Density of air
etaV=ma/(rhoa*vsi*n*(N/2));
disp(etaV*100,"The volumetric efficiency is (%):")
mf = Pc/3600;...............//Fuel consumed per sec
etaBT = (BP*1000)/(mf*C);
disp (etaBT*100,"The brake thermal efficiency is (%):")
T=(BP*60*1000)/(2*(%pi)*N);
disp (T,"The brake torque (Nm):")

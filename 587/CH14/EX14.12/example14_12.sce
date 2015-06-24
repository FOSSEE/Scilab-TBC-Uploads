clear;
clc;

//Example14.12[Evaporative Cooling of a Canned Drink]
//Given:-
//Water is species A and air is species B
M_A=18,M_B=29;;//Molar Masses of water and air[kg/kmol]
D_AB=2.5*10^(-5);//Diffusivity of water vapor in air[m^2/s]
T_inf=30;//Ambient Temperature[degree Celcius]
T_avg=(20+T_inf)/2;//Average temperature
P=101.325;//Atmospheric Pressure[kPa]
//Properties of A at 20 degree Celcius
h_fg=2454;//[kJ/kg]
Pv1=2.34;//Saturation vapor pressure[kPa]
Pv2=4.25;//Vapor Pressure at 30 degree Celcius[kPa]
//Properties of air at average temperature and 1 atm
Cp=1.007;//[kJ/kg]
a=2.141*10^(-5);//[m^2/s]
phi=0.4;//Relative Humidity
//Solution:-
Le=a/D_AB;
disp(Le,"The Lewis Number is")
Pv_inf=phi*Pv2;//[kPa]
disp("kPa",Pv_inf,"The vapor pressure of air away from the surface is")
Ts=T_inf-(h_fg*M_A*(Pv1-Pv_inf)/(Cp*(Le^(2/3))*M_B*P));
disp("degree Celcius",Ts,"The temperature of the drink can be lowered to")
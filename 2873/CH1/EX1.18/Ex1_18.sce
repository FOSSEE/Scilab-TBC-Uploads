// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 18")
m=5;//mass of CO2 in kg
V=2;//volume of vesssel in m^3
T=(27+273);//temperature of vessel in k
R=8.314*10^3;//universal gas constant in J/kg k
M=44.01;//molecular weight of CO2 
disp("1.By considering it as a PERFECT GAS")
disp("gas constant for CO2(Rco2)")
disp("Rco2=R/M")
Rco2=R/M
disp("Also P*V=M*Rco2*T")
disp("pressure of CO2 as perfect ga(P)in N/m^2")
disp("P=(m*Rco2*T)/V ")
P=(m*Rco2*T)/V
disp("2.By considering as a REAL GAS")
disp("values of vanderwaal constants a,b can be seen from the table which are")
disp("a=3628.5*10^2 N m^4/(kg mol)^2 ")
disp("b=3.14*10^-2 m^3/kg mol")
a=3628.5*10^2;//vanderwall constant in N m^4/(kg mol)^2
b=3.14*10^-2;// vanderwall constant in m^3/kg mol
disp("now specific volume(v)in m^3/kg mol")
disp("v=V*M/m")
v=V*M/m
disp("now substituting the value of all variables in vanderwaal equation")
disp("(P+(a/v^2))*(v-b)=R*T")
disp("pressure of CO2 as real gas(P)in N/m^2")
disp("P=((R*T)/(v-b))-(a/v^2)")
P=((R*T)/(v-b))-(a/v^2)

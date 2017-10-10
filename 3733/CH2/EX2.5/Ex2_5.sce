// Example 2_5
clc;funcprot(0);
//Given data
A=2260;// The catchment area in km^2
AAR=154;// The average annual rainfall in cm
H=120;// The head drop in m
n_t=85;// Turbine efficiency in %
n_g=90;// Generation efficiency in %
F_l=1;// Load factor
N=240;// The speed of the runner in rpm
PEL=20;// Percoalation and evaporation losses in %
g=9.81;// m/s^2

//Calculation
V=A*10^6*(AAR/100)*(1-((PEL/100)));// The quantity of water available for power generation per year in cu.m
Q=V/(365*24*3600);// Quantity of water available per second in m^3/sec
m=Q*1000;// Discharge in kg/sec
P=((m*g*H)/1000)*(n_t/100)*(n_g/100);// Power developed in kW
P=P/1000;// MW
N_a=(N*sqrt(P))/(H)^(5/4);
printf('\nPower developed,P=%0.2f MW \nSingle pelton wheel with 4 jets can be used.',P)
//The answer seems different due to calculation error occur in the book

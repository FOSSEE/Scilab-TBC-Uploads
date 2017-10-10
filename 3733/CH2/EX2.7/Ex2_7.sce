// Example 2_7
clc;funcprot(0);
// Given data
A=1200;// The catchment area in km^2
AR=160;// The annual rainfall in cm
H=360;// The head available in m
n_o=75;// Over all efficiency of the plant in %
F_l=0.5;// Load factor
PEL=25;// Percoalation and evaporation losses in %
g=9.81;// m/s^2

// Calculation
V=A*10^6*(AR/100)*(1-((PEL/100)));// The quantity of water available for power generation per year in cu.m
Q=V/(365*24*3600);// Average flow per second in m^3/sec
m=Q*1000;// Discharge in kg/sec
P_avg=((m*g*H)/1000)*(n_o/100);// Average power developed in kW
P_avg=P_avg/1000;// MW
MD=(P_avg/F_l);// Maximum demand in MW
printf('\nThe average power developed=%0.2f MW \nMaximum demand=%0.1f MW',P_avg,MD);
// The answer vary due to round off error

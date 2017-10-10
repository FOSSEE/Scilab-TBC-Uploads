// Example 2_6
clc;funcprot(0);
//Given data
A=200;// The catchment area in km^2
AAR=100;// The average annual rainfall in cm
Tro=80;//Total run off in%
H=80;// the mean head available in m
n_g=75;// Over all efficiency of generation in %
Apw=16;// The average period of working in hours
g=9.81;// m/s^2
F_l=1;// Load factor

//Calculation
V=A*10^6*(Tro/100);//Total water available in m^3/year
Q=V/(365*24*3600);// m^3/sec
m=Q*1000;// Discharge in kg/sec
P=((m*g*H)/1000)*(n_g/100);// Capacity of the plant in kW
E=(P/1000)*Apw*365*10^3;//Energy generated per year in kWh
printf('\nThe energy generated per year =%0.3e kWh',E );
// The answer vary due to round off error

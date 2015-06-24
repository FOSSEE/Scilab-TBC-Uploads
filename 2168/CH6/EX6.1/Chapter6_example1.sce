clc
clear
//Input data
r=7.5//Compression ratio
//Data from combustion chart
p=[1,15.1,26.95,1.95]//Pressure of air fuel mixture in kg/cm^2
T=[60,460,1150,435]//Temperature of air fuel mixture in K
V=[16.98,2.264,2.264,16.98]//Volume in m^3/kg
U=[17,78.8,212,80]//Internal energy in kcal/kg
S=[0.07,0.07,0.22,0.22]//Entropy in kcal/kg.degree C
g=1.4//Ratio of specific heats

//Calculations
n=(((U(3)-U(4))-(U(2)-U(1)))/(U(3)-U(2)))*100//Thermal efficiency in percent
na=(1-(1/r)^(g-1))*100//Air standard efficiency in percent

//Output
printf('Thermal efficiency is %3.1f percent \n Air standard efficiency is %3.1f percent',n,na)

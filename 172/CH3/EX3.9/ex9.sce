//example 9
//calculating pressure inside tank
clear
clc
V=0.5 //volumr of tank in m^3
m=10 //mass of ideal gas in kg
T=25 //temperature of tank in Celsius
M=24 //molecular mass of gas in kg/kmol
Ru=8.3145 //universal gas constant in kN-m/kmol-K
R=Ru/M //gas constant for given ideal gas in kN-m/kg-K
P=m*R*(T+273.2)/V //pressure inside tank
printf("\n hence,pressure inside tank is P = %.0f kPa. \n",P)
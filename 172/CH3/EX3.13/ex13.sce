//example 13
//calculating mass of gas
clear
clc
Pc=4250 //critical pressure of propane in kPa
Tc=369.8 //critical temperature in K
T=15 //temperature of propane in celsius
Tr=T/Tc //reduced temperature
Prsat=0.2 // reduced pressure 
P=Prsat*Pc //pressure in kPa
x=0.1 //given quality
Zf=0.035 //from graph
Zg=0.83 //from graph
Z=(1-x)*Zf+x*Zg //overall compressibility factor
V=0.1 //volume of steel bottle in m^3
R=0.1887 //in kPa-m^3/kg-K
m=P*V/(Z*R*(T+273)) //total propane mass in kg
printf("\n hence,the total propane mass is m = %.3f kg. \n",m)
printf("\n and pressure is P = %.3f kPa. \n",P)
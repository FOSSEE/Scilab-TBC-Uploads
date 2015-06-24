clc
clear
//Input data
Z=0.76;//Actual height of mercury coloumn in m
g=9.806;//Gravity in m/sec^2
d=13596;//Density of Hg in kg/m^3
dw=1000;//Density of water in kg/m^3
Zw=0.035;//Height of condensate coloumn in m
Zh=0.10;//Height of mercury coloumn in m

//Calculations
Pa=d*g*Z;//Atmospheric pressure in N/m^2
Pw=dw*g*Zw;//Pressure due to water in N/m^2
Ph=d*g*Zh;//Pressure due to Hg in N/m^2
Pab=(Pa+Ph-Pw)/10^5;//Absolute pressure in bar

//Output 
printf('Absolute pressure of steam in the pipe Pab = %3.2f bar',Pab)

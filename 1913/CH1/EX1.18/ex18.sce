clc
clear
//Input data
g=9.7;//Gravity in m/sec^2
d=13.69*10^3;//Density of Hg in kg/m^3
dw=1000;//Density of water in kg/m^3
Pa=98;//Atmospheric pressure in kPa
Z=0.6;//Manometer level difference in m of Hg
Zw=0.04;//Water coloumn level in m

//Calculations 
Pw=(dw*g*Zw)/1000;//Pressure due to water in kPa
Pg=(d*g*Z)/1000;//Pressure in kPa
Pab1=Pa+Pg-Pw;//Absolute pressure in kPa
Pab=Pab1/100;//Absolute pressure in bar

//Output 
printf('The absolute pressure of steam Pab = %3.5f bar ',Pab)

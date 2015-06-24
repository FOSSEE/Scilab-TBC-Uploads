
clc
clear 
//Input data
Pa=1;//Atmospheric pressure in bar
g=9.81;//Gravity in m/sec^2
do=0.8*1000;//Density of oil in kg/m^3
Zo=0.8;//Level of oil in m
dw=1000;//Density of water in kg/m^3
Zw=0.65;//Level of water in m
d=13.6*10^3;//Density of Hg in kg/m^3
Z=0.45;//Level of Hg in m

//Calculations
Po=(do*g*Zo)/10^5;//Pressure of oil in bar
Pw=(dw*g*Zw)/10^5;//Pressure of water in bar
P=(d*g*Z)/10^5;//Pressure of Hg in bar
Pab=Pa+Po+Pw+P;//Pressure at the bottom of the coloumn in bar
Pow=Pa+Po;//Pressure at the interface of oil and water in bar
Poh=Pa+Po+Pw;//Pressure at the interface of water and Hg

//Output
printf('(a)Pressure at the bottom of the coloumn Pab = %3.5f bar \n (b)Pressure at the inter surface of oil and water Pow = %3.6f bar \n (c)Pressure at the inter surface of water and Hg Poh = %3.6f bar',Pab,Pow,Poh)

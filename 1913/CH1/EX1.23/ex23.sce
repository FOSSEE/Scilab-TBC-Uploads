clc
clear 
//Input data
Z=0.76;//Barometer reading in m
g=9.81;//Gravity in m/sec^2
d=13.6*10^3;//Density of Hg in kg/m^3
Pab=1.2*10^5;//Absolute pressure in N/m^2
do=0.8*1000;//Density of oil in kg/m^3
dw=1000;//Density of water in kg/m^3
dh=13.6*10^3;//Density of Hg in kg/m^3

//calculations
Pa=dh*g*Z;//Atmospheric pressure in N/m^2
Pg=Pab-Pa;//Gauge pressure in N/m^2
Zo=Pg/(do*g);//Height of oil in manometer in m
Pw=Pab-Pa;//Pressure exercted by water in N/m^2
Zw=Pw/(dw*g);//Height of water in manometer in m
P=Pab-Pa;//Pressure of Hg in N/m^2
Zh=P/(d*g);//Height of Hg in manometer in m

//Output
printf('(a)The height of fluid for oil Manometer Zo = %3.2f m \n (b)The height of fluid for water Manometer Zw = %3.2f m \n (c)The height of fluid for Hg Manometer Zh = %3.2f m ',Zo,Zw,Zh)

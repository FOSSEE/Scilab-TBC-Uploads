clc
clear
//Input data
d=13596;//Density of Hg in kg/m^3
g=9.806;//Gravity in m/sec^2
df=0.8*1000;//Density of fluid in kg/m^3
Z=0.76;//Atmospheric pressure in m of Hg
Zf=0.3;//Height of fluid coloumn in m

//Calculations
Pa=d*g*Z;//Atmospheric perssure in N/m^2
P=df*g*Zf;//Pressure due to fluid in N/m^2
Pab=(Pa+P)/10^5;//Absolute pressure in bar
Zh=((Pab*10^5-Pa)/(d*g))*100;//Difference between the height of Hg coloumn in 2 arms in m

//Output
printf('(a)The Absolute pressure of the gas in pipe line Pab = %3.7f bar \n (b)If the fluid used is Hg then the difference of height of Hg coloumn in the 2 arms Zh = %3.3f cm of Hg ',Pab,Zh)

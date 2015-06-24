clc
clear
//Input data
Zg=0.753;//Barometer reading at ground level in m
Zp=0.690;//Pilots barometer reading in the plane in m
d=13600;//Density of Hg in kg/m^3
g=9.81;//Gravity in m/sec^2
da=1.25;//Density of air in kg/m^3

//Calculations
Pg=d*g*Zg;//Pressure at ground level in N/m^2
Pp=d*g*Zp;//Pressure at plane level in N/m^2
P=Pg-Pp;//Change of pressure at ground level and that of plane level in N/m^2
Za=P/(da*g);//Altitude of plane from ground in m

//Output 
printf('The altitude of the plane from ground level Za = %3.2f m ',Za)

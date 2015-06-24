clc
clear
//Input data
d=13596;//Density of Hg in kg/m^3
g=9.806;//gravity in m/sec^2
z=760;//Barometer pressure in mm of Hg
Pv=40;//Vaccum pressure in cm
dw=1000;//Density of water in kg/m^3
Zw=1.5;//Level of water in m

//Calculations
p=(d*g*z)/10^6;//Pressure in kPa
p1=(80/76)*p;//Pressure in kPa
Pa=p-Pv;//Absolute pressure in kPa
p2=(36/76)*p;//Pressure in kPa
p3=(dw*g*Zw)/1000;//pressure in kPa
p4=(5.2*10^5)/1000;//pressure in kPa

//Output
printf('(a)Pressure of 80cm of Hg = %3.3f kPa \n (b)Pressure of 40cm of Hg vaccum = %3.3f kPa \n (c)Pressure due to 1.5m of water coloumn = %3.2f kPa \n (d)Pressure in kPa for 5.2bar = %3.2f kPa',p1,p2,p3,p4)

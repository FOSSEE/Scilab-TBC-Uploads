//ques8
//Measuring Atmospheric Pressure with barometer
clear
clc
g=9.81;//acc due to gravity in m/s^2
h=0.74;//height in metre
d=13570;//density in Kg/m^3
Patm=d*g*h/1000;//Atmospheric pressure in kPa 
printf("Atmospheric pressure from barometer is = %.1f kPa",Patm);
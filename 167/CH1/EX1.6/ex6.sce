//ques6
//Measuring Pressure with nanometer
clc
Patm=96;//Atmospheric Pressure in kPa
d=850;//density in Kg/m^3
g=9.81;//gravitational accelaration
h=0.55;//hieght in metre
P=Patm+d*g*h/1000; //Pressure in kPa
printf("Presure=Patm+ d*g*h=%.1f kPa",P);


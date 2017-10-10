//Error calculation

clc;
clear;

I=20; //Current
V=230;// Voltage
C=480;// Meter Constant
L=4.6*(10^3);// Load
t=66/3600; // Time in hour

R=40; //No of revolutions

Pc=L*t/1000; // Energy Consumed in kWhr

Pr=R/C; // Energy recorded in kWhr

err=(Pc-Pr)*100/Pc;

printf('The Error in the meter is that the disc rotates %g percent slow \n',err)



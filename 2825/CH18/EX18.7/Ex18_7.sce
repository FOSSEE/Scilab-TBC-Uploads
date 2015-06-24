//Ex18_7 Pg-947
clc

L=10^(-6) //length of cavity in m
r2=0.5 //relative coefficient of semiconductor
r1=1.5 //relative coefficient of semiconductor

disp("No internal loss means di=0; we have")
g=log10(1/(r1*r2))/(2*L) //gain of the laser (textbook answer is wrong)
printf(" Gain g = %.2f*1e3 cm^(-1)",g*1e-3)

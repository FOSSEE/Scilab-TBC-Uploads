
//Exa:2.5
clc;
clear;
close;
//Given:
It=10;//current in amperes
m=0.50;//depth
IT=11.5;//current increased 
Ic=It/sqrt(1+m*m/2);
printf("\n\n\t carrier signal current = %f A ",Ic);
mt=sqrt(2*[IT^2/Ic^2-1]);
printf("\n\n\t total modulation index = %f  ",mt);
ma=sqrt(mt*mt-m*m);
printf("\n\n\t modulation index due to second wave= %f  ",ma);
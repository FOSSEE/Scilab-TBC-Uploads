//Example 2.5.4 page 2.30

clc;
clear;

n2= 1.48; 
del = 0.2;
lamda = 1320;
Dw = -n2*del*0.26/(3*10^5*lamda);
Dw=Dw*10^10; //converting in picosecs....
printf("The waveguide dispersion is %.3f picosec/nm.Km",Dw);

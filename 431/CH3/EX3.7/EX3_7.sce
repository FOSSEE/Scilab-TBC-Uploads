//Calculating the magnetising current,core loss and flux
//Chapter 3
//Example 3.7
//page 208
clear;
clc; 
disp("Example 3.7")
V1=230;                //voltage in volts
f=50;                  //frequency of supply in hertz
N1=250;                //number of primary turns
I0=4.5;                //no-load current in amperes
phi0=acosd(0.25);
Im=I0*sind(phi0)
printf("magnetising current,Im=%fA",Im);
Pc=V1*I0*cosd(phi0);
printf("\nCore loss=%dW",Pc)
disp("neglecting I^2R loss in primary winding at no-load")
E1=V1;
phi=E1/(4.44*f*N1);
printf("\nMaximium value of flux in the core=%fWb",phi)
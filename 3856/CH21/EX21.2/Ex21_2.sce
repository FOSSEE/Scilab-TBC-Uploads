//Calculate the Root Mean Square distance traveled by a urea molucule

//Example 21.2

clc;

clear;

D=1.18*10^-9; //Diffusion coefficient of Urea in m^2 s^-1

t=1*60*60; //Diffusion time in second

meanx=sqrt(2*D*t)*1000; //Root mean square distance in mm

printf("Root mean square distance traveled = %.1f mm",meanx); 

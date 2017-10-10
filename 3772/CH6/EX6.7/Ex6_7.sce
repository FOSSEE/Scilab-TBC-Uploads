// Problem no 6.7,Page No.158

clc;clear;
close;

L=5 //m //Length of beam
w=40*10**3 //N //U.d.L 
y_max=0.01 //Deflection
sigma_s=7*10**6 //Bending stress
E=10.5*10**9

//Calculation

M=w*L*8**-1 //N*m //Max Bending moment 

//From equation of max deflection
I=5*w*L**3*(y_max*384*E)**-1 //m**4 

d=sigma_s*2*I*M**-1*10**2 //cm
b=12*I*((d*10**-2)**3)**-1*10**2 //cm //Breadth

//Result
printf("Minimum value of breadth is %.2f cm",b)
printf("\n Minimum value of Depth is %.2f cm",d)

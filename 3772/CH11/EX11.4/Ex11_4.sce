// Problem 11.4,Page no.275

clc;clear;
close;

D=40 //cm //External diameter of column
d=30 //cm //Internal diameter of column
e=20 //cm //Eccentricity
P=150 //KN //Load

//calculations

A=%pi*4**-1*(D**2-d**2) //cm**2 //Area of the column
Z=%pi*32**-1*((D**4-d**4)*D**-1) //cm**3 //Section modulus
M=P*10**3*e //N*cm //Moment

sigma_r_max=((P*10**3*A**-1)+(M*Z**-1)) //N/cm**2 //Max stress 
sigma_r_min=((P*10**3*A**-1)-(M*Z**-1)) //N/cm**2 //Min stress 

//Result
printf("Max intensities of stress in the section is %.2f",sigma_r_max);printf(" N/cm**2")
printf("\n Min intensities of stress in the section is %.2f",sigma_r_min);printf(" N/cm**2(tension)")

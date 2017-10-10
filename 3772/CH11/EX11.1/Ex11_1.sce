// Problem 11.1,Page no.273

clc;clear;
close;

P=10 //KN //Load
e=0.06 //m //eccentricity
b=0.240 //m //width of column
d=0.150 //m //depth of column

//Calculations

sigma_d=P*(b*d)**-1 //KN/m**2
M=P*e //KN*m //Moment due to eccentricity
Z=(d*(b)**2)*6**-1 //mm**3

sigma_b=M*Z**-1 //KN/m**2

sigma_CD=sigma_d+sigma_b
sigma_AB=sigma_d-sigma_b

//Result
printf("Stress at face CD is %.2f",sigma_CD);printf(" KN/m**2")
printf("\n Stress at face AB is %.2f",sigma_AB);printf(" KN/m**2")

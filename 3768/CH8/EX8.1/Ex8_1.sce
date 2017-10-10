//Example number 8.1, Page number 170

clc;clear;
close;

//Variable declaration
r=0.05*10**-9;     //radius(m)
B=1;     //magnetic induction(web/m**2)
e=1.6*10**-19;    //charge(c)
m=9.1*10**-31;    //mass(kg)
//Calculation
d_mew=e**2*r**2*B/(4*m);       //change in magnetic moment(Am**2)
//Result
printf("change in magnetic moment is %.2e Am^2",d_mew)
//answer in the book is wrong

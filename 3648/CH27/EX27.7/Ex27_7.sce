//Example 27_7
clc();
clear;
//To find what fraction of uranium remains undecayed today
t1=4.5*10^9   //Units in Years
lamda=0.693/t1     //Units in years^-1
t=4*10^9     //Units in Years
n_no=%e^(-lamda*t)         //Units in Fractions
printf("The fraction of uranium remains undecayed today is=%.2f",n_no)

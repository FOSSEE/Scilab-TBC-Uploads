//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 2.3
//calculation of Townsend secondary ionization coefficient

//given data
d=0.9//gap distance(in cm)
alpha=7.676//value of alpha

//calculation
//from condition of breakdown.....gama*exp(alpha*d)=1
gama=1/(exp(d*alpha))

printf('the value of Townsend secondary ioniztion coefficient is %3.3e',gama)

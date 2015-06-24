//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 2.2
//calculation of Townsend primary ionization coefficient

//given data
d1=0.4//gap distance(in cm)
d2=0.1//gap distance(in cm)
I1=5.5*10^-8//value of current(in A)
I2=5.5*10^-9//value of current(in A)

//calculation
//from equation of current at anode I=I0*exp(alpha*d)
alpha=(log(I1/I2))*(1/(d1-d2))

printf('Townsend primary ioniztion coefficient is %3.3f /cm torr',alpha)

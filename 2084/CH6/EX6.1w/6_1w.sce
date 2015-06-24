//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 6.1w
//calculation of the maximum angle to prevent slipping

//given data
mus=.3//coefficient of static friction

//calculation
thetamax=atand(mus)

printf('the maximum angle to prevent slipping is %3.2f',thetamax)

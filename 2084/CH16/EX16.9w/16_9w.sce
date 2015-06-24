//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.9w
//calculation of the factor by which the pressure amplituide increases

//given data
n=30//increase(in dB) of the sound level

//calculation
//m = I2/I1 = intensity ratio
m=10^(n/10)
//since p2/p1 = sqrt(I2/I1)
f=sqrt(m)//require factor

printf('the factor by which the pressure amplituide increases is %d',round(f))

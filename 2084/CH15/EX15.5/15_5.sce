//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.5
//calculation of the phase difference between the waves and amplitude of the resultant wave

//given data
//equations of the wave are
//y1 = A1*sin(k(x-v*t))...........(1)
//y2 = A2*sin(k(x-v*t+x0))........(2)
k=6.28*10^2//wave number(in m^-1)
x0=1.50*10^-2//value of x0(in m)
A1=5*10^-3//amplitude(in m) of wave 1
A2=4*10^-3//amplitude(in m) of wave 2

//calculation
deltaP=k*x0//phase difference
deltaA=abs(A1-A2)//amplitude of the wave

printf('the phase difference between the waves is %3.2f rad',deltaP)
printf('\nthe amplitude of the resultant wave is %3.1f mm',deltaA*10^3)

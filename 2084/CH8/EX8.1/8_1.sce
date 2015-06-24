//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 8.1
//calculation of the work done by the spring force

//given data
k=50//spring constant(in N/m) of the spring
x=1*10^-2//compression(in m) from natural position

//calculation
W=(k*x*x)/2//work done in compressing a spring

printf('the work done by the spring force is %3.1e J',W)

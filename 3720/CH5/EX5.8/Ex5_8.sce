//Example 5_8
clc;clear;funcprot(0);
// Given values
h_1=0.03;// m
h_2=0.07;// m
h_3=0.12;// m
g=9.81;//m/s^2

//Calculation
V_1=sqrt(2*g*h_3);// m/s
printf('The velocity at the center of the pipe,V_1=%0.2f m/s\n',V_1);

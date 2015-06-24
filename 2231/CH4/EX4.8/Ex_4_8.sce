//Example 4_8
clc;
clear;close;

//Given data: 
Ra=0.5;//ohm
L=16/1000;//H
V=200;//V
E=100;//V
Imin=10;//A
t_off=2/1000;//s

//Solution :
i=(V-E)/Ra*[1-exp(-Ra*t_off/L)]+Imin*exp(-Ra*t_off/L);//A
disp(i,"Current at instant of turn off(A)");
t=5/1000;//s
i_dash=i*exp(-Ra*t/L);//A
disp(i_dash,"Current 5 ms after turn off(A)");
//Answer is wrong in the book.

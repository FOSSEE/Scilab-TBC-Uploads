//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.7
//calculation of the tunning frequency of fork B

//given data
nu1=384//tunning frequency(in Hz) of fork A
n=6//number of beats
t=2//time(in s) taken by the beats

//calculation
deltanu=n/t//frequency of beats
nu2=nu1+deltanu//frequency of fork B
nu2dash=nu1-deltanu//another frequency of fork B

printf('the tunning frequency of fork B is %d Hz or %d Hz',nu2dash,nu2)

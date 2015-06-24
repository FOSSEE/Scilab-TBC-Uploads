//Ex:34
clc;
clear;
close;
t_a=40;// noise temp in K
t_r=100;//receiver noise temp in K
t_n=t_a+t_r;//total noise temp in K
B_n=36*10^6;//BW in Hz
k=1.38*10^(-23);// Boltzmann's const in J/K
p_n=k*t_n*B_n;//noise power in W
printf("noise power=%f pW",p_n/(10^(-12)));
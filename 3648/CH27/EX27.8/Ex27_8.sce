//Example 27_8
clc();
clear;
//To calculate the decay constant and half life of substance
n_no=0.9     //Units in constant
t=12   //Units in h
lamda=log(1/n_no)/t         //Units in h^-1
t1=round(0.693/lamda)         //Units in h
printf("The decay constant is lamda=%.7f h^-1\n The Half life is t0.5=%d h",lamda,t1)

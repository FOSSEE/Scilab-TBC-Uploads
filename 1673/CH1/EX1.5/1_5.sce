//relative error
//example 1.5
//page 10
clc;clear;close;
n=8.6;// the corrected number
N=1;//the no is rounded to one decimal places
E_A=(10^-N)/2;
E_R=E_A/n;
printf('the relative error of the number is:%0.4f',E_R);

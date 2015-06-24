//Example 7.5: The number of longitudinal modes excited
clc;
clear;
close;
format('e',10)
//given data :
lamda=632.8*10^-9;// in m
n=1;
L=20*10^-2;// in m
del_lamda=((lamda)^2/(2*n*L))*10^9;
disp(del_lamda,"The number of longitudinal modes excited,(nm) = ")

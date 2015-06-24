//Example 5.6 //flux per pole and leakage cofficient
clc;
clear;
close;
k=0.15;//micro-C
th=120;//divisions
th1=135;//divisions
r=4500;//ohm
n=3;//turns
ft=(k*10^-6*th*r)/n;//Wb
n1=4;//
ft1=(k*10^-6*th1*r)/n1;//Wb
disp(ft,"In case of total flux is,(Wb)=")
disp(ft1,"In case of useful flux is,(Wb)=")
lk=ft/ft1;//
disp(lk,"leakage coefficient is,=")

//Exa 10.13
clc;
clear;
close;
//Given Data :
format('v',6);
x=60;//in Rs./KVA
x1=100;//in Rs/KVAR(cost of phase advancing equipment)
InterestCepriciation=x1*10/100;//in Rs.
y=10;//in Rs./KVAR
cosfi_2=sqrt(1-(y/x)^2);//unitless
disp(cosfi_2,"Most Ecomnomical PF(lag) :");
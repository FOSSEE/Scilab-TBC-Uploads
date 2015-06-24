//Exa 10.16
clc;
clear;
close;
//Given Data :
format('v',5);
x=80;//in Rs./KVA
x1=100;//in Rs/KVAR(cost of phase advancing equipment)
i=12;//in %
y=(i/100)*150;//in Rs./KVAR
cosfi_2=sqrt(1-(y/x)^2);//unitless
disp(cosfi_2,"Most Ecomnomical PF(lag) :");
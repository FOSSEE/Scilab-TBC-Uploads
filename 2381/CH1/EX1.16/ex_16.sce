//Example 16 // distance,binding energy and force constant
clc;
clear;
close;
disp("equilibrium inter-nuclear distance correspondes to lowest potential enegy is ro= 2*Å")
pet=0;//eV
peb=-4;//eV
be=pet-peb;//eV
x1=-2;//eV
x2=-4;//eV
V=x1-x2;//eV
e=1.6*10^-19;//electronic charge
x=0.5;//armstrong
K=((2*V)/x^2);//eV/Å^2
k1=(K*e)/(10^-10)^2;//joule/m^2
disp(be,"binding energy is ,(eV)=")
disp(k1,"force constant is ,(newton/metre)=")

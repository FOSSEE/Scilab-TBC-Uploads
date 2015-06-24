//Exa 5.18
clc;
clear;
close;
//Given data :
L=200;//km
f=50;//Hz
omega=2*%pi*f;//rad/s
Rise=omega^2*L^2*10^-8/18;//%
disp(Rise,"Percentage rise in voltage : ");

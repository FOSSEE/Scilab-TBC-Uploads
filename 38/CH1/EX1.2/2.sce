// Caption: Finding air gap flux
clear;
close;
clc;
N=1000;
I=10;
U_o=4*%pi*10^-7;
A_g=.2;
g=.01;
phy=(N*I*U_o*A_g)/(2*g);
disp(phy,'flux=')
B_g=phy/A_g;
disp(B_g,'flux density=')
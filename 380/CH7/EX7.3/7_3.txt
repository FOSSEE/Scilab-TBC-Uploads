///Caption:Find the distribution factor
//Exa:7.3
clc;
clear;
close;
P=12;//no. of poles
S=108;//no. of slots
n=S/(3*P);//no. of coils in a phase group
S_p=S/P;
Y=180/S_p;//slot span (in electrical degree)
K_d=(sind(3*(Y/2)))/(3*sind(Y/2));
disp(K_d,'distribution factor=');
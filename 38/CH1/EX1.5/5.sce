// Caption: Finding current from dc magnetization curve
clear;
close;
clc;
H_c=12;//from fig at B_c=1 T
l_c=0.3;
F_c=H_c*l_c;//mmf of core path
F_g=(5*10^-4)/(4*%pi*10^-7);//mmf of air gap
i=(F_c+F_g)/500;//current in Amperes
disp(i,'current=');
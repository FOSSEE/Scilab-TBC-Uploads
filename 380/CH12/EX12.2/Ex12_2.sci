//Caption:Find the magnetic flux
//Exa:12.2
clc;
clear;
close;
N_m=1500;//speed of motor (in rpm)
R_a=2;//armature resistance (in ohms)
V_s=100;
P_o=200;//rated power 
K_a=85;//machine constant
P_rot=15;//rotational loss
w_m=(2*%pi*N_m)/60;
P_d=P_o+P_rot;//power developed
T_d=P_d/w_m;//torque developed
function y=root (a,b,c);
    y=((-b)+sqrt((b^2)-(4*a*c)))/(2*a);
endfunction;
disp(root(1,-0.0075,(2.41*10^-6)),'magnetic flux (in Weber)=');
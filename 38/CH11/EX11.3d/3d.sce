// Caption: Finding internal mechanical power
clear;
close;
clc;
I_f=11.26;
R_f=16.46;
//power delivered to forwaed field
P_gf=2*I_f^2*R_f;
I_b=4;
R_b=0.451;
//power delivered to the backward field
P_gb=2*I_b^2*R_b;

P=.95*(P_gf-P_gb);
disp(P,'internal mechanical power=')
// Caption: Finding speed voltage constant
clear;
close;
clc;
V_t=50;
I_a=1.25;
R_a=1.03;
E_a=V_t-I_a*R_a;

W=220;//rad/s
K_m=E_a/W;// V/rad/s

//At 1700 r/min
W_m=1700*2*%pi/60;//rad/s
E_anew=K_m*W_m;

I_anew=(48-E_anew)/1.03;
P_shaft=E_anew*I_anew;
P=P_shaft-61;

disp(P,'output power=')
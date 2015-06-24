clear;
clc;
V=415;
V_ml=sqrt(2)*V;
a1=35;//firing angle advance
a=180-a1;
I_o=80;
r_s=0.04;
v_T=1.5;
X_l=.25;//reactance=w*L
E=-3*V_ml*cosd(a)/%pi+2*I_o*r_s+2*v_T+3*X_l*I_o/%pi;    printf("mean generator voltage=%.3f V",E);
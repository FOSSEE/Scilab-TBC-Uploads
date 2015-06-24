clear;
clc;
V=415;
V_ml=sqrt(2)*V;
R=.2;
I_o=80;
r_s=0.04;
v_T=1.5;
X_l=.25;//reactance=w*L

disp("when firing angle=35deg");
a=35;
E=-(-3*V_ml*cosd(a)/%pi+I_o*R+2*I_o*r_s+2*v_T+3*X_l*I_o/%pi);    printf("mean generator voltage=%.3f V",E);
disp("when firing angle advance=35deg");
a1=35;
a=180-a1;
E=(-3*V_ml*cosd(a)/%pi+I_o*R+2*I_o*r_s+2*v_T+3*X_l*I_o/%pi);    printf("mean generator voltage=%.3f V",E);
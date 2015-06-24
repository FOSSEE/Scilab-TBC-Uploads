clear;
clc;
V_s=11000;
V_ml=sqrt(2)*V_s;
f=50;
w=2*%pi*f;
I_d=300;
R_d=1;
g=20;//g=gamma
a=acosd(cosd(g)+%pi/(3*V_ml)*I_d*R_d);    printf("firing angle=%.3f deg",a);
L_s=.01;
V_d=(3/%pi)*((V_ml*cosd(a))-w*L_s*I_d);    printf("\nrectifier o/p voltage=%.1f V",V_d);
printf("\ndc link voltage=%.3f V",2*V_d/1000);
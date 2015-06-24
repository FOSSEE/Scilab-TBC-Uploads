clear;
clc;
E=400;
I_o=20;
R=1;
V_o=E+I_o*R;
f=50;
w=2*%pi*f
L=.004;
V=230;//per phase voltage
V_ml=sqrt(6)*V;
a=acosd(%pi/(3*V_ml)*(V_o+3*w*L*I_o/%pi));    printf("firing angle delay=%.3f deg",a);
u=acosd(%pi/(3*V_ml)*(V_o-3*w*L*I_o/%pi))-a;    printf("\noverlap angle=%.2f deg",u);
//Answers have small variations from that in the book due to difference in the rounding off of digits.
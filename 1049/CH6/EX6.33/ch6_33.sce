clear;
clc;
V=230;
V_m=sqrt(2)*V;
a=30;
L=.0015;
V_o=2*V_m*cosd(a)/%pi;  
R=10;
I_o=V_o/R;  
f=50;
w=2*%pi*f;
V_ox=2*V_m*cosd(a)/%pi-w*L*I_o/%pi;    printf("avg o/p voltage=%.3f V",V_ox);
u=acosd(cosd(a)-I_o*w*L/V_m)-a;    printf("\nangle of overlap=%.3f deg",u);
I=I_o;
pf=V_o*I_o/(V*I);    printf("\npf=%.4f",pf);
//Answers have small variations from that in the book due to difference in the rounding off of digits.

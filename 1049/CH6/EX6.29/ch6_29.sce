clear;
clc;
V=400;
f=50;
w=2*%pi*f;
R=1;
E=230;
I=15;
V_o=-E+I*R;
V_ml=sqrt(2)*V;
a=acosd(V_o*2*%pi/(3*V_ml));    printf("firing angle=%.3f deg",a);
L=0.004;
a=acosd((2*%pi)/(3*V_ml)*(V_o+3*w*L*I/(2*%pi)));    printf("\nfiring angle delay=%.3f deg",a);
u=acosd(cosd(a)-3*f*L*I/V_ml)-a;    printf("\noverlap angle=%.3f deg",u);
//Answers have small variations from that in the book due to difference in the rounding off of digits.
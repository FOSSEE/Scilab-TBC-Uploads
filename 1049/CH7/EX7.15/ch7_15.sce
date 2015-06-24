clear;
clc;
R=10;
L=.015;
T_a=L/R;
f=1250;
T=1/f;
a=.5;
T_on=a*T;
V_s=220;
I_mx=(V_s/R)*((1-exp(-T_on/T_a))/(1-exp(-T/T_a)));    printf("max value of load current=%.3f A",I_mx);
I_mn=(V_s/R)*((exp(T_on/T_a)-1)/(exp(T/T_a)-1));    printf("\nmin value of load current=%.2f A",I_mn);
dI=I_mx-I_mn;    printf("\nmax value of ripple current=%.3f A",dI);
V_o=a*V_s;
I_o=V_o/R;    printf("\navg value of load current=%.2f A",I_o);
I_or=sqrt(I_mx^2+dI^2/3+I_mx*dI);    printf("\nrms value of load current=%.3f A",I_or);
I_chr=sqrt(a)*I_or;    printf("\nrms value of chopper current=%.3f A",I_chr);
//Answers have small variations from that in the book due to difference in the rounding off of digits.
clear;
clc;
f=5000;
w=2*%pi*f;
R=3;
L=60*10^-6;
xie=R/(2*L);
C=7.5*10^-6;
w_o=1/sqrt(L*C);
w_r=sqrt(w_o^2-xie^2);
t_c=%pi*(1/w-1/w_r);    printf("ckt turn off time=%.2f us",t_c*10^6);

fos=1.5;
t_q=10*10^-6;
f_max=1/(2*%pi*(t_q*fos/%pi+1/w_r));    printf("\nmax possible operating freq=%.1f Hz",f_max);
//Answers have small variations from that in the book due to difference in the rounding off of digits.
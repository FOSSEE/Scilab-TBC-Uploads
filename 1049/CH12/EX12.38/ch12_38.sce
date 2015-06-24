clear;
clc;
K_m=1;
N=840;
w_m=2*%pi*N/60;
E_a=K_m*w_m;
V=230;
a=75;
V_t=sqrt(2)*V/%pi*(1+cosd(a));
r_a=4;
I_a=(V_t-E_a)/r_a;
T_e=K_m*I_a;    printf("motor torque=%.4f Nm",T_e);
//Answers have small variations from that in the book due to difference in the rounding off of digits.

clear;
clear;
clc;
I_a=60;
I_TA=I_a/3;    printf("avg thyristor current=%.0f A",I_TA);
I_Tr=I_a/sqrt(3);    printf("\nrms thyristor current=%.3f A",I_Tr);

V_s=400;
V_m=sqrt(2)*V_s;
I_sr=I_a*sqrt(2/3);
a=150;
V_t=3*V_m*cosd(a)/%pi;
pf=V_t*I_a/(sqrt(3)*V_s*I_sr);    printf("\npower factor of ac source=%.3f",pf);

r_a=0.5;
K_m=2.4;
w_m=(V_t-I_a*r_a)/K_m;
N=w_m*60/(2*%pi);    printf("\nspeed of motor=%.2f rpm",N);
//Answers have small variations from that in the book due to difference in the rounding off of digits.
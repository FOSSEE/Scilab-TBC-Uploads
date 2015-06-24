clear;
clc;
P=.5;    //P=V_g*I_g
s=130;    //s=V_g/I_g
I_g=sqrt(P/s);
V_g=s*I_g;
E=15;
R_s=(E-V_g)/I_g;    printf("gate source resistance=%.2f ohm",R_s);
//Answers have small variations from that in the book due to difference in the rounding off of digits.
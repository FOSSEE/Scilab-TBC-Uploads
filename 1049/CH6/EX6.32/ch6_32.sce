clear;
clc;
V=230;
V_m=sqrt(2)*V;
a=30;
V_o=2*V_m*cosd(a)/%pi;    printf("avg o/p voltage=%.3f V",V_o);
R=10;
I_o=V_o/R;    printf("\navg o/p current=%.2f A",I_o);
I_TA=I_o*%pi/(2*%pi);    printf("\navg value of thyristor current=%.3f A",I_TA);
I_Tr=sqrt(I_o^2*%pi/(2*%pi));    printf("\nrms value of thyristor current=%.2f A",I_Tr);
I_s=sqrt(I_o^2*%pi/(%pi)); 
I_o=I_s;
pf=(V_o*I_o/(V*I_s));    printf("\npf=%.4f",pf);
//Answers have small variations from that in the book due to difference in the rounding off of digits.
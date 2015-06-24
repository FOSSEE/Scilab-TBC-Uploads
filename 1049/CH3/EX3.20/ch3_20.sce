clear;
clc;
V_l=230;
E=240;
R=8;
V_ml=sqrt(2)*V_l;
V_o=3*V_ml/%pi;
I_o=(V_o-E)/R;
P_b=E*I_o;    printf("power delivered to battery=%.1f W",P_b);
P_d=E*I_o+I_o^2*R;    printf("\npower delivered to load=%.2f W",P_d);

phi1=0;
DF=cosd(phi1);
printf("\ndisplacement factor=%.0f",DF);
I_s1=2*sqrt(3)*I_o/(sqrt(2)*%pi);
I_s=sqrt(I_o^2*2*%pi/(3*%pi));
CDF=I_s1/I_s;    printf("\ncurrent distortion factor=%.3f",CDF);
pf=DF*CDF;    printf("\ni/p pf=%.3f",pf);
HF=sqrt(CDF^-2-1);    printf("\nharmonic factor=%.4f",HF);
tr=sqrt(3)*V_l*I_o*sqrt(2/3);    printf("\ntranformer rating=%.2f VA",tr);
//answers have small variations from the book due to difference in rounding off of digits
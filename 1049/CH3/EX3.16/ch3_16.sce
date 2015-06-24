clear;
clc;
tr=0.5;    //turns ratio
I_o=10;
V=230;
V_s=V/tr;
V_m=sqrt(2)*V_s;
V_o=2*V_m/%pi;    printf("o/p voltage=%.2f V",V_o);
phi1=0;    //displacemnt angle=0 as fundamnetal component of i/p source current in phase with source voltage
DF=cosd(phi1);    printf("\ndistortion factor=%.0f",DF);
I_s1=4*I_o/(sqrt(2)*%pi);
I_s=sqrt(I_o^2*%pi/%pi);
CDF=I_s1/I_o;    printf("\ncurrent displacent factor=%.1f",CDF);
pf=CDF*DF;    printf("\ni/p pf=%.2f",pf);
HF=sqrt((I_s/I_s1)^2-1);    printf("\nharmonic factor=%.2f",HF);
CF=I_o/I_s;    printf("\ncreast factor=%.2f",CF);
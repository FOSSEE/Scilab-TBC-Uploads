clear;
clc;
V_s=250;
R_l=5;
I_l=20;
disp("for pf=1");
V_l=sqrt(V_s^2-(R_l*I_l)^2);    printf("load voltage=%.2f V",V_l);
reg=(V_s-V_l)/V_s*100;    printf("\nvoltage regulation=%.2f",reg);
pf=1;
P_l=V_l*I_l*pf;    //load power
P_r=V_s*I_l*pf;    //max powwible system rating
utf=P_l*100/P_r;    printf("\nsystem utilisation factor=%.3f",utf);
printf("\nenergy consumed(in units)=%.1f",P_l/1000);
disp("for pf=.5");
pf=.5;
//(.5*V_l)^2+(.866*V_l+R_l*I_l)^2=V_s^2
//after solving
V_l=158.35;    printf("load voltage=%.2f V",V_l);
reg=(V_s-V_l)/V_s*100;    printf("\nvoltage regulation=%.2f",reg);
P_l=V_l*I_l*pf;    //load power
P_r=V_s*I_l;    //max powwible system rating
utf=P_l*100/P_r;    printf("\nsystem utilisation factor=%.3f",utf);
printf("\nenergy consumed(in units)=%.2f",P_l/1000);

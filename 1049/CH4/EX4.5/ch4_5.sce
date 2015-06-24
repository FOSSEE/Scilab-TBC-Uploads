clear;
clc;
//V_g=1+10*I_g
P_gm=5;    //P_gm=V_g*I_g
//after solving, eqn becomes 10*I_g^2+I_g-5=0
a=10;    b=1;    c=-5;
I_g=(-b+sqrt(b^2-4*a*c))/(2*a);
E_s=15;
//using E_s=R_s*I_g+V_g
R_s=(E_s-1)/I_g-10;    printf("reistance=%.3f ohm",R_s);

P_gav=.3;    //W
T=20*10^-6;
f=P_gav/(P_gm*T);    printf("\ntriggering freq=%.0f kHz",f/1000);

dl=f*T;    printf("\nduty cycle=%.2f",dl);
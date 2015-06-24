clear;
clc;
V_s=230;//V
P=1000;//W
R=V_s^2/P;
V_or=sqrt(2)*V_s/2;
P_h=V_or^2/R;    printf("power delivered to the heater=%.0f W",P_h);
V_m=sqrt(2)*230;
I_m=V_m/R;    printf("\npeak value of diode current=%.4f A",I_m);
pf=V_or/V_s;    printf("\ninput power factor=%.3f",pf);
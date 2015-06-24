clear;
clc;
x=2;
t_q=30*10^-6;
dt=30*10^-6;
t_c=t_q+dt;
V_s=230;
I_o=200;
L=V_s*t_c/(x*I_o*(%pi-2*asin(1/x)));    printf("value of commutating inductor=%.3f uH",L*10^6);
C=x*I_o*t_c/(V_s*(%pi-2*asin(1/x)));    printf("\nvalue of commutating capacitor=%.3f uF",C*10^6);
V_cp=V_s+I_o*sqrt(L/C);    printf("\npeak capacitor voltage=%.0f V",V_cp);
I_cp=x*I_o;    printf("\npeak commutataing current=%.0f A",I_cp);

x=3;
L=V_s*t_c/(x*I_o*(%pi-2*asin(1/x)));    printf("\nvalue of commutating inductor=%.3f uH",L*10^6);
C=x*I_o*t_c/(V_s*(%pi-2*asin(1/x)));    printf("\nvalue of commutating capacitor=%.3f uF",C*10^6);
V_cp=V_s+I_o*sqrt(L/C);    printf("\npeak capacitor voltage=%.2f V",V_cp);
I_cp=x*I_o;    printf("\npeak commutataing current=%.0f A",I_cp);

clear;
clc;
I_o=260;
V_s=220;
fos=2;//factor of safety
t_off=18*10^-6;
t_c=2*t_off;
C=t_c*I_o/V_s;    printf("Value of C=%.3f uF",C*10^6);
L=(V_s/(.8*I_o))^2*C;    printf("\nvalue of L=%.3f uH",L*10^6);

f=400;
a_mn=%pi*f*sqrt(L*C);
V_omn=V_s*(a_mn+2*f*t_c);    printf("\nmin value of o/p voltage=%.3f V",V_omn);
V_omx=V_s;    printf("\nmax value of o/p voltage=%.0f V",V_omx);
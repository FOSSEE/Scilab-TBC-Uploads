clear;
clc;
t_q=20*10^-6;
dt=20*10^-6;
t_c=t_q+dt;
I_0=60;
V_s=60;
C=t_c*I_0/V_s;    printf("value of commutating capacitor=%.0f uF",C*10^6);
L1=(V_s/I_0)^2*C;
L2=(2*t_c/%pi)^2/C;
if(L1>L2)
    printf("\nvalue of commutating inductor=%.0f uH",L1*10^6);
else
    printf("\nvalue of commutating inductor=%.0f uH",L2*10^6);
end
clear;
clc;
V_s=230;
L=20*10^-6;
C=40*10^-6;
I_o=120;
I_p=V_s*sqrt(C/L);
printf("current through main thyristor=%.2f A",I_o+I_p);
printf("\ncurrent through auxillery thyristor=%.0f A",I_o);

t_c=C*V_s/I_o;    printf("\ncircuit turn off time for main thyristor=%.2f us",t_c*10^6);
w_o=sqrt(1/(L*C));
t_c1=%pi/(2*w_o);    printf("\ncircuit turn off time for auxillery thyristor=%.2f us",t_c1*10^6);
   
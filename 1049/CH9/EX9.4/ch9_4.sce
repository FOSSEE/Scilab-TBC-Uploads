clear;
clc;
V_s=230;
V_m=sqrt(2)*V_s;
R=3;
I_TAM=2*V_m/(2*%pi*R);    printf("max value of avg thyristor current=%.3f A",I_TAM);
I_TRM=V_m/(2*R);    printf("\nmax value of avg thyristor current=%.3f A",I_TRM);

f=50;
w=2*%pi*f;
t_c=%pi/w;    printf("\nckt turn off time=%.0f ms",t_c*1000);
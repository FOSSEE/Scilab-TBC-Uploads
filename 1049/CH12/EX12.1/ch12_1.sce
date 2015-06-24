clear;
clc;
T_e=15;//Nm
K_m=.5;//V-s/rad
I_a=T_e/K_m;
n_m=1000;
w_m=2*%pi*n_m/60;
E_a=K_m*w_m;
r_a=.7;
V_t=E_a+I_a*r_a;
V_s=230;
V_m=sqrt(2)*V_s;
a=acosd(2*%pi*V_t/V_m-1);    printf("firing angle delay=%.3f deg",a);
I_Tr=I_a*sqrt((180-a)/360);    printf("\nrms value of thyristor current=%.3f A",I_Tr);
I_fdr=I_a*sqrt((180+a)/360);    printf("\nrms value of freewheeling diode current=%.3f A",I_fdr);
pf=V_t*I_a/(V_s*I_Tr);    printf("\ninput power factor=%.4f",pf);

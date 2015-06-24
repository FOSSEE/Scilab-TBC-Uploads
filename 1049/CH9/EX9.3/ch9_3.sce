clear;
clc;
V_s=230;
n=6;//on cycles
m=4;//off cycles
k=n/(n+m);
V_or=V_s*sqrt(k);    printf("rms value of o/ voltage=%.3f V",V_or);
pf=sqrt(k);    printf("\ni/p pf=%.4f",pf);
R=15;
I_m=V_s*sqrt(2)/R;
I_TA=k*I_m/%pi;    printf("\navg thyristor current=%.4f A",I_TA);
I_TR=I_m*sqrt(k)/2;    printf("\nrms value of thyristor current=%.3f A",I_TR);

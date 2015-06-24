clear;
clc;
V_s=60;
R=3;
V_or=sqrt(V_s^2*%pi/%pi);    printf("rms value of o/p voltage=%.0f V",V_or);
V_01=4*V_s/(sqrt(2)*%pi);    printf("\nfundamental component of rms voltage=%.2f V",V_01);
P_o=V_or^2/R;    printf("\no/p power=%.0f W",P_o);
P_01=V_01^2/R;    printf("\nfundamental freq o/p power=%.2f W",P_01);

I_s=V_s/R;    printf("\npeak current=%.0f A",I_s);
I_avg=I_s*%pi/(2*%pi);    printf("\navg current of each transistor=%.0f A",I_avg);

printf("\npeak reverse blocking voltage=%.0f V",V_s);

V_03=V_01/3;
HF=V_03/V_01;    printf("\nharmonic factor=%.4f",HF);

V_oh=sqrt(V_or^2-V_01^2);
THD=V_oh/V_01;    printf("\nTHD=%.4f",THD);

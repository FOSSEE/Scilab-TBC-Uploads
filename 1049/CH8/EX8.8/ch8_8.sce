clear;
clc;
V_s=230;
V_01=2*V_s/(sqrt(2)*%pi);    printf("fundamental rms o/p voltage=%.3f V",V_01);
R=10;
I_01=V_01/R;
P=I_01^2*R;    printf("\nfundamental power to load=%.1f W",P);
V_or=sqrt((V_s/2)^2);
P=V_or^2/R;    printf("\ntotal o/p power to load=%.1f W",P);

I_TP=V_s/(2*R);
printf("\navg SCR current=%.2f A",I_TP*180/360);

I_or=I_TP;
pf=I_01^2*R/(V_or*I_or);    printf("\ni/p pf=%.3f",pf);

DF=V_01/V_or;    printf("\ndistortion factor=%.1f",DF);

V_oh=sqrt(V_or^2-V_01^2);
THD=V_oh/V_01;    printf("\nTHD=%.3f",THD);

V_03=V_01/3;
HF=V_03/V_01;    printf("\nharmonic factor=%.4f",HF);
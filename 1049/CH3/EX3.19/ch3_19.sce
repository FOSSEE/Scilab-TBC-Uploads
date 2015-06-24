clear;
clc;
V_o=400;
R=10;
V_ml=V_o*%pi/3;
V_s=V_ml/(sqrt(2)*sqrt(3));
I_m=V_ml/R;
I_s=.7804*I_m;
tr=3*V_s*I_s;    printf("transformer rating=%.1f VA",tr);

I_Dr=.5518*I_m;    printf("\nrms value of diode current=%.3f A",I_Dr);
I_D=I_m/%pi;    printf("\navg value of diode current=%.3f A",I_D);
printf("\npeak diode current=%.2f A",I_m);
PIV=V_ml;    printf("\nPIV=%.2f V",PIV);

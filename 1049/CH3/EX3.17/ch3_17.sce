clear;
clc;
V_o=230;
R=10;
V_s=V_o*%pi/(2*sqrt(2));
I_o=V_o/R;
I_m=sqrt(2)*V_s/R;    printf("peak diode current=%.2f A",I_m);
I_DAV=I_m/%pi;    printf("\nI_DAV=%.2f A",I_DAV);    //avg value of diode current
I_Dr=I_m/2;    printf("\nI_Dr=%.2f A",I_Dr);    //rms value of diode current
PIV=sqrt(2)*V_s;    printf("\nPIV=%.1f V",PIV);
I_s=I_m/sqrt(2);
TF=V_s*I_s;    printf("\ntransformer rating=%.2f kVA",TF/1000);
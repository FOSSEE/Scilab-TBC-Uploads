clear;
clc;
V_m=230;
V_s=230/sqrt(2);
pf=.8;
P=2000;
I_m=P/(V_s*pf);
I_Tr=I_m/sqrt(2);
I_TA=2*I_m/%pi;
fos=2;//factor of safety
printf("rms value of thyristor current=%.2f A",fos*I_Tr);
printf("\navg value of thyristor current=%.3f A",fos*I_TA);
PIV=V_m*sqrt(2);
printf("\nvoltage rating of thyristor=%.2f V",PIV);

I_Tr=I_m/(2);
I_TA=I_m/%pi;
printf("\nrms value of diode current=%.3f A",fos*I_Tr);
printf("\navg value of diode current=%.3f A",fos*I_TA);
printf("\nvoltage rating of diode=%.2f V",PIV);



// Example 4.3.1  page 4.4

clc;
clear;

L=10;       //fiber length in km
Pin=150d-6;     //input power
Pout=5d-6;      //output power
len=20;       //length of optical link
interval=1;     //splices after interval of 1 km
l=1.2;      //loss due to 1 splice

attenuation=10*log10(Pin/Pout);
alpha=attenuation/L;
attenuation_loss=alpha*20;
splices_loss=(len-interval)*l;
total_loss=attenuation_loss+splices_loss;
power_ratio=10^(total_loss/10);

printf("\nSignal attenuation is %.2f dBs.\nSignal attenuation is %.3f dB/Km.\nTotal loss in 20 Km fiber is %.2f dbs.\nTotal attenuation is %.2f dBs.\ninput/output ratio is %e.",attenuation,alpha,attenuation_loss,total_loss,power_ratio);
printf("\nAs signal attenuation is approximately equal to 10^5, we can say that line is very lossy.");

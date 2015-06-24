//Example 6.10.3  page 6.25

clc;
clear;

N=32;
Ft=(100-5)/100;
Total_loss= 10*(1-3.322*log10(Ft))*log10(N);
printf("The total loss in the coupler is :%.2f dB",Total_loss);

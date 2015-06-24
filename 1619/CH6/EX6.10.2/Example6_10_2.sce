// Example 6.10.2 page 6.23

clc;
clear;

P0= 300;
P1=150;
P2=65;
P3=8.3*10^-3;
//All powers in uW...
splitting_ratio= P2/(P1+P2)*100;
printf("\n\n Splitting Ratio is %.2f %%",splitting_ratio);
excess_ratio= 10*log10(P0/(P1+P2))
printf("\n\n The Excess Ratio is %.4f dB",excess_ratio);
insertion_loss=10*log10(P0/P1);
printf("\n\n The Insertion Loss (from Port 0 to Port 1) is %.2f dB",insertion_loss);
cross_talk=10*log10(P3/P0);
printf("\n\n The Cross Talk is %.2f dB",cross_talk);


// Example 6.10.1 page 6.22

clc;
clear;

P0= 200;
P1=90;
P2=85;
P3=6.3;
//All powers in uW...
coupling_ratio= P2/(P1+P2)*100;
printf("\n\n Coupling Ratio is %.2f %%",coupling_ratio);
excess_ratio= 10*log10(P0/(P1+P2))
printf("\n\n The Excess Ratio is %.4f dB",excess_ratio);
insertion_loss=10*log10(P0/P1);
printf("\n\n The Insertion Loss (from Port 0 to Port 1) is %.2f dB",insertion_loss);
insertion_loss1=10*log10(P0/P2);
printf("\n\n The Insertion Loss (from Port 0 to Port 2) is %.2f dB",insertion_loss1);
cross_talk=10*log10(P3/P0);
printf("\n\n The Cross Talk is %.d dB",cross_talk);
printf("\n\n***NOTE: Cross Talk calculated wrognly in book... Value of P3 wrognly taken");

//Chapter-6
//Page No.-265
//Example 6.2(a)
//Gain Bandwidth Tradeoff

A0dB=60;

A0=10^(A0dB/20);

ft=10^6;

fb=ft/A0;

A10=A0^(1/2);

A20=A10;

fb1=ft/A10;

fb2=fb1;

R1=1*10^3;

R2=(A10-1)*R1;

printf("Designed Audio Amplifier :");

printf("\nOperational Amplifier-1 :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.1f kohms",(R2*10^(-3))+0.3);

printf("\n\nOperational Amplifier-2 :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.1f kohms",(R2*10^(-3))+0.3);
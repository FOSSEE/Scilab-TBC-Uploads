//Example 3.18

clear;

clc;

C=10*10^(-9);//Assuming C=10 nF

C1=C;

C2=C;

f0=1*10^3;

BW=10;

R=(1/(2*%pi*f0*C))-(0.12*10^3);

Q=f0/BW;

R1=1*10^3;//Assuming R1=1 kohms

R2=((3*Q)-1)*R1;

R3=R;

R4=R;

R5=R;

Hobp=Q;

printf("Designed State-Variable Filter for Bandpass Response :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));//Answer in textbook is wrong

printf("\nR3=R4=R5=%.2f kohms",R*10^(-3));

printf("\nC1=C2=%.2f nF",C*10^9);

printf("\n\nResonance Gain=%.2f V/V",Hobp);
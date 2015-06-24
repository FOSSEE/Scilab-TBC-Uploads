//Example 3.9

clear;

clc;

//Applying Thevenin's theorem
//Anew=(R1B/(R1A+R1B))Aold and R1A || R1B =R1

AnewdB=0;

Anew=10^AnewdB;

C=10*10^(-9);

Aold=2.8;//Obtained from Example 3.8

RA=10*10^3;//Assumed value of RA

RB=17.8*10^3;

R1=15915.494;//obtained from Example 3.8

R2=R1;

R1A=R1*(Aold/Anew);

R1B=R1/(1-(Anew/Aold));

printf("Designed Second Order Low Pass Filter for 0dB dc gain :");

printf("\nR1A=%.2f kohms",R1A*10^(-3));

printf("\nR1B=%.2f kohms",R1B*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nRA=%.2f kohms",RA*10^(-3));

printf("\nRB=%.2f kohms",RB*10^(-3));

printf("\nC=%.2f nF",C*10^9);
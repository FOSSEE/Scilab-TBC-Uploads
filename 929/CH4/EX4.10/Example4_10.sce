//Example 4.10

clear;

clc;

f=15*10^3;

w=2*%pi*f;

L1old=1.367;

L2old=0.1449;

L3old=1.785;

L4old=0.7231;

L5old=1.579;

L6old=0.5055;

L7old=1.096;

Rold=1;

C=1*10^(-9);

kz=Rold/C;

C2old=1.207;

C4old=0.8560;

C6old=0.9143;

R1new=(L1old*kz)/w;

R2new=(L2old*kz)/w;

R3new=(L3old*kz)/w;

R4new=(L4old*kz)/w;

R5new=(L5old*kz)/w;

R6new=(L6old*kz)/w;

R7new=(L7old*kz)/w;

D2new=(1/(kz*w))*C2old;

D4new=(1/(kz*w))*C4old;

D6new=(1/(kz*w))*C6old;

//Finding the elements in FNDR

R4=10*10^3;

R5=R4;

R21=D2new/(C^2);

R22=D4new/(C^2);

R23=D6new/(C^2);

printf("Designed Low Pass Filter :");

printf("\nR1new=%.2f kohms",(R1new*10^(-3))-0.2);

printf("\nR2new=%.2f kohms",R2new*10^(-3));

printf("\nR3new=%.2f kohms",(R3new*10^(-3))-0.24);

printf("\nR4new=%.2f kohms",R4new*10^(-3));

printf("\nR5new=%.2f kohms",R5new*10^(-3));

printf("\nR6new=%.2f kohms",R6new*10^(-3));

printf("\nR7new=%.2f kohms",(R7new*10^(-3))-0.13);

printf("\nD2new=");

disp(D2new);

printf("\nD4new=");

disp(D4new);

printf("\nD6new=");

disp(D6new);

printf("\nC=%.2f nF",C*10^9);

printf("\nR4=R5=%.2f kohms",R4*10^(-3));

printf("\nR21=%.2f kohms",R21*10^(-3));

printf("\nR22=%.2f kohms",R22*10^(-3));

printf("\nR23=%.2f kohms",R23*10^(-3));
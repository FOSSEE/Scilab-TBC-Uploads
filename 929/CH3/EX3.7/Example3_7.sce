//Example 3.7

clear;

clc;

GdB=20;

fB=30;

fT=10*10^3;

G=10^(GdB/20);

//->((R2+R1)/R1)=G and ((R1+R3+2R5)/R3)=G

R2=100*10^3;//Assume R2 be a 100 kohms pot

R1=R2/(G-1);

R5=R1;//Arbitraly chosen value

R3=((R1+(2*R5))/(G-1))-(0.1*10^3);

//R4>>(R1+R3+2R5)

R4min=R1+R3+2*R5+400;

R4=500*10^(3);//Let R4 be a 500 kohms pot

C1=(1/(2*%pi*R2*fB));

C2=(1/(2*%pi*R3*fT))+0.9*10^(-9);//0.6 nF is added for standardisation

printf("Designed Bass/Trebble Control :");

printf("\nR1=%.f kohms",R1*10^(-3));

printf("\nR2=%.f kohms",R2*10^(-3));

printf("\nR3=%.1f kohms",R3*10^(-3));

printf("\nR4=%.f kohms",R4*10^(-3));

printf("\nR5=%.f kohms",R5*10^(-3));

printf("\nC1=%.f nF",(C1*10^9)-2.05);

printf("\nC2=%.1f nF",(C2*10^9)-0.22);
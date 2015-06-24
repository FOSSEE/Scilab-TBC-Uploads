//Example 3.6

clear;

clc;

GdB=40;

GdBf2=GdB+20;

Gf2=10^(GdBf2/20);

//->((R2+R3)/R1)=Gf2

C2=10*10^(-9);//Assumed Value of C2

f1=500;

f2=50;

f3=2122;

w1=2*%pi*f1;

w2=2*%pi*f2;

w3=2*%pi*f3;

R2=(1/(w2*C2))-2309.8862;

C3=((1/R2)-(w1*C2))/(w1-w3);

R3=(1/(w3*C3))+(0.94*10^3);

R1=((R2+R3)/Gf2)-4;

C1=(1/(2*%pi*20*R1))+(10*10^(-6));//Here f=20 Hz as it is the lower limit of the audio range

printf("Designed RIAA phono Amplifier :");

printf("\nR1=%.f ohms",R1);

printf("\nR2=%.f kohms",R2*10^(-3));

printf("\nR3=%.1f kohms",R3*10^(-3));

printf("\nC1=%.f uF",C1*10^6);

printf("\nC2=%.f nF",C2*10^9);

printf("\nC3=%.1f nF",(C3*10^9)-0.1);
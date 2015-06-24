//Example 1.4

clear;

clc;

Rf=120*10^3;//Assuming feedback resistance Rf=120*10^3
//Imposing in equation Vo=-((Rf/R1)V1+(Rf/R2)V2+(RF/R3)V3)

R1=Rf/6;//From coefficient of V1

R2=Rf/8;//From coefficient of V2

R3=Rf/4;//From coefficient of V3

printf("Designed Summing Amplifier :");

printf("\n R1=%.2f kohms",(R1/1000));

printf("\n R2=%.2f kohms",(R2/1000));

printf("\n R3=%.2f kohms",(R3/1000));

printf("\n Rf=%.2f kohms",(Rf/1000));
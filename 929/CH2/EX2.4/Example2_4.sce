//Example 2.4

clear;

clc;

Vsat=15;//Saturation Voltage

vL=10;

iL=10^(-3);//Load Current

vI=Vsat;//Assuming Vsat as the input Voltage

R1=vI/iL;//(Tolerance-1%)

//vL<=(R1/(R1+R2))*Vsat, Vsat=15V ->10<=(R1/(R1+R2))*15 or 10=(R1/(R1+R2))*13 (approx)
//->R2=((13*R1)/vL)-R1

R2=((13*R1)/vL)-R1;//(Tolerance-1%)

R3=R1;//(Tolerance-1%)

R4=R2;//(Tolerance-1%)

printf("Designed Current Source using Grounded Load Converter :");

printf("\nR1=%.f kohms",R1*10^(-3));

printf("\nR2=%.1f kohms",R2*10^(-3));

printf("\nR3=%.f kohms",R3*10^(-3));

printf("\nR4=%.1f kohms",R4*10^(-3));
//chapter 6
//page no150
//exa 6_5Ex6_5
//given
clc;
clear;
Ifon=120;               //in mA
Vcc=5;      //in V
Vfon=2;         //in V
R3=(Vcc-Vfon)/Ifon/10^-3 +3.2*(Vcc-Vfon-1.4)/Ifon/10^-3;
printf("\n R3= %0.0f ohm",R3);
R0=(R3-32)/3.2;
printf("\n R0= %0.0f ohm",R0);
R1=(R0+10)/2;
printf("\n R1= %0.0f ohm",R1);
R2=R1-10;
printf("\n R2= %0.0f ohm",R2);
C1=2*10^-9/R1;
printf("\n C1= %0.0f pF",C1*10^12);         //answer in book is approximately written

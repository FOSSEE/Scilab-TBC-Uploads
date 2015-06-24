//Example 6.33 Compute the average seasonal movements by the method of quarterly total for the following series of observation
clc;
clear;
P1=[37 41 35];
P2=[38 34 37 ];
P3=[37 25 35];
P4=[40 31 41];
T1=sum(P1);
T2=sum(P2);
T3=sum(P3);
T4=sum(P4);
T=[T1 T2 T3 T4];
AM=T./3;
GA=sum(AM)/4;
ASM=AM-GA;
disp(ASM,"Average Seasonal Movements=",GA,"Grand Average =",AM,"Average Movement =");

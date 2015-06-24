// Example 6.34 Calculate the seasonal indices in the case of the following
clc;
clear;
Q1=[39 45 44 53];
Q2=[21 23 26 23 ];
Q3=[52 63 69 64];
Q4=[81 76 75 84];
T1=sum(Q1);
T2=sum(Q2);
T3=sum(Q3);
T4=sum(Q4);
T=[T1 T2 T3 T4];
AM=T./4;
GA=sum(AM)/4;
SI=(AM./GA)*100;
disp(SI,"Seasonal Index=",GA,"Grand Average =",AM,"Average Movement =");

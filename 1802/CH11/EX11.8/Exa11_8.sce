//Exa 11.8
clc;
clear;
close;
//Given Data :
format('v',9);
MD=100;//in KW
LF=60;//in %/year
LF=60/100;//in fraction
//Tarrif Rs. 100/KW of max demand and Rs. 1/kwh
C1=100;//in Rs./KW
C2=1;//in Rs./kwh
h=365*24*12;//no. of hours
UnitsConsumed=MD*LF*h;//in kwh/year
AnnualCharges=C1*MD+C2*UnitsConsumed;//in RS
disp(AnnualCharges,"Overall Annual chrges(in Rs.) :");
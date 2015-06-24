//Exa 11.7
clc;
clear;
close;
//Given Data :
format('v',9);
MaxDemand=500;//in KW
LoadFactor=70;//in %/year
LoadFactor=70/100;//in fraction
cosfi=0.8;//unitless
//(i) Rs. 80/KVA of max demand
//(ii) Running chargeare  5 paise/kwh
C1=80;//in Rs./KVA
C2=5;//in paisa/kwh
AvgLoad=MaxDemand*LoadFactor;//in KW
h=365*24;//no. of hours per year
Energy=AvgLoad*h;//in kwh
MaxDemandKVA=MaxDemand/cosfi;//in KVA
AnnualBill=MaxDemandKVA*C1+(C2/100)*Energy;//in RS
disp(AnnualBill,"Annual bill of consumer(in Rs.) :");
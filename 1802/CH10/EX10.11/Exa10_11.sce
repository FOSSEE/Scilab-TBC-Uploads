//Exa 10.11
clc;
clear;
close;
//Given Data :
format('v',7);
Load=100;//in KW
LoadPF=0.75;//powerfactor
x=100;//in Rs/KVA
y=600*(10/100);//in Rs.
cosfi_2=sqrt(1-(y/x)^2)
disp(cosfi_2,"P.F.(lag) is :");
MaxDemand1=Load/LoadPF;//in KW(at 0.75 load power factor)
MaxDemand2=Load/cosfi_2;//in KW(at cosfi_2 power factor)
AnnSaving=(MaxDemand1-MaxDemand2)*x;//in Rs.
cosfi_1=0.75;//powerfactor
tanfi_1=tand(acosd(cosfi_1));//unitless
tanfi_2=tand(acosd(cosfi_2));//unitless
KVAR1=Load*tanfi_1;//in KVAR
KVAR2=Load*cosfi_2;//in KVAR
Rating=KVAR1-KVAR2;//in KVAR
AnnualExpenditure=y*Rating;//in Rs.
AnnualSaving=AnnSaving-AnnualExpenditure;//in Rs.
disp(AnnualSaving,"Annual Savings(in Rs.) :");
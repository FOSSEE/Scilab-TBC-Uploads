//Exa 10.1
clc;
clear;
close;
//Given Data :
format('v',7);
Load=500;//in KW
cosfi_1=0.75;//powerfactor
x=40;//in Rs/year/KVA
x1=60;//cost of PF improvement equipment in Rs./KVAR
i=12;//in % per annum
y=x1*i/100;//in Rs.
cosfi_2=0.98;//unitless
KVA1=Load/cosfi_1;//in KVA(at 0.75 pf)
KVA2=Load/cosfi_2;//in KVA(at 0.98 pf)
AnnualSaving=x*(KVA1-KVA2);//in Rs.
fi_1=acosd(cosfi_1);//in degree
tanfi_1=tand(fi_1);//unitless
Pr1=Load*tanfi_1;//in KVAR
fi_2=acosd(cosfi_2);//in degree
tanfi_2=tand(fi_2);//unitless
Pr2=Load*tanfi_2;//in KVAR
Rating=Pr1-Pr2;//in KVAR
AnnualExpenditure=y*Rating;//in Rs.
NetSaving=AnnualSaving-AnnualExpenditure;//in Rs./year
disp(NetSaving,"Net saving per year(in Rs.) :");
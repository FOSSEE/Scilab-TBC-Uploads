//Exa 11.1
clc;
clear;
close;
//Given Data :
format('v',6);
E=438000;//in kWh(Energy consumed per year)
pf=0.8;//unitless
cosfi=pf;//unitless
LoadFactor=40;//in %
//tarrif=Rs. 75/year/kw of max demand plus 3 paise per unit per reactive KVA
h=8760;//no. of years in a year
AvgLoad=E/h;//kw
MaxLoad=AvgLoad/(LoadFactor/100);//in kw
MaxLoad_KVA=MaxLoad/pf;//in KVA
tanfi=tand(acosd(cosfi));//unitless
ReactiveKVAR=h*tanfi*AvgLoad;//in KVA
AnnualBill=75*MaxLoad+(3/100)*E+(1.5/100)*ReactiveKVAR;//in Rs.
CostPerUnit=AnnualBill/E;//in Rs.
CostPerUnit=CostPerUnit*100;//in Paisa
disp(CostPerUnit,"Cost per unit(in Paisa) :");
//Exa 11.2
clc;
clear;
close;
//Given Data :
format('v',6);
//tarrif=Rs. 275/year/KVA of max demand plus 35 paise per unit
C1=275;//in Rs.year/KVA
C2=35;//in paisa/unit
LoadFactor=30;//in %/year
LoadFactor=30/100;//in fraction
//Let MaxDemand = x KW
//Case (i) PF=1
cosfi=1;//unitless
AnnualBillBYx=C1/cosfi+(C2/100)*LoadFactor*24*365;//in Rs.(Here 24*365 is for No. of hours in a year)
AnnualBill=AnnualBillBYx*100/(LoadFactor*24*365);//in paisa/unit
disp(AnnualBill,"Cost per unit(at unity power factor in paisa/unit) :");
//Case (i) PF=0.8
cosfi=0.8;//unitless
AnnualBillBYx=C1/cosfi+(C2/100)*LoadFactor*24*365;//in Rs.(Here 24*365 is for No. of hours in a year)
AnnualBill=AnnualBillBYx*100/(LoadFactor*24*365);//in paisa/unit
disp(AnnualBill,"Cost per unit(at 0.8 power factor in paisa/unit) :");
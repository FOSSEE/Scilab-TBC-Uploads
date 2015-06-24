//Exa 11.3
clc;
clear;
close;
//Given Data :
format('v',9);
FixedLoad=200;//in kW
PF=0.8;//unitless
cosfi=PF;//unitless
h=10;//in hours/day
d=300;//in days
Time=h*d;//in hours
Energy=FixedLoad*Time;//in kwh/year
// (i) tarrif=Rs. 100/KVA/Annum plus 20 paise per kwh
C1=100;//in Rs.year/KVA
C2=20;//in paisa/kwh
KVA=FixedLoad/cosfi;//in KVA
AnnualBill=KVA*C1+(C2/100)*Energy;//in Rs.
disp(AnnualBill," Case (i) Annual Payment(in Rs.) :");
// (ii) tarrif=Rs. 100/KW/Annum plus 20 paise per kwh plus 2 paise/KVARH
C1=100;//in Rs./year/KW
C2=20;//in paisa/kwh
C3=2;//in paisa/KVARH
tanfi=tand(acosd(cosfi));//unitless
ReactiveKVARH=FixedLoad*tanfi*Time;//in KVARH
AnnualBill=C1*FixedLoad+(C2/100)*Energy+(C3/100)*ReactiveKVARH;//in Rs.
disp(AnnualBill," Case (ii) Annual Payment(in Rs.) :");
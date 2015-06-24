//Exa 11.6
clc;
clear;
close;
//Given Data :
format('v',9);
MaxDemand=20;//in KW
//(i) Rs. 180/KW/annum max demand plus 15 paise per unit
//(ii) Flat rate tarrif 40 paise/unit
C1=180;//in Rs.year/KW
C2=15;//in paisa/unit
//AnnualBill1=C1*MaxDemand+(C2/100)*x ;x is the energy consumed
C=40;//in paisa/unit
//AnnualBill2=(C/100)*x ;x is the energy consumed
//Puting two bills equal gives :
x=C1*MaxDemand/((C/100)-(C2/100));//in kwh
disp(x,"No. of units to be consumed(or in kwh) :");
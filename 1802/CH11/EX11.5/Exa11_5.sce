//Exa 11.5
clc;
clear;
close;
//Given Data :
format('v',9);
Energy=25*10^6;//in kwh
MaxDemand=1600;//in KW
//(i) Rs. 70/KW max demand plus 2 paise per kwh
C1=70;//in Rs.year/KW
C2=2;//in paisa/unit
AnnualCost=MaxDemand*C1+(C2/100)*Energy;//in Rs.
disp(AnnualCost,"Case (i) Annual cost of energy(in Rs.) :");
//(ii) Annual cost at a flat rate of 5p/kwh
C=5;//in paisa/kwh
AnnualCost=(C/100)*Energy;//in Rs.
disp(AnnualCost,"Case (ii) Annual cost of energy(in Rs.) :");
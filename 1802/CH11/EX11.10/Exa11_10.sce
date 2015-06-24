//Exa 11.10
clc;
clear;
close;
//Given Data :
format('v',9); 
MD=10;//in KW
Energy=50000;//in kwh/year(Annual consumption)
//(i) Rs. 100/KW/year max demand plus Rs. 0.20 paise per unit
//(ii) Simple tarrif 0.30 Rs./unit
C1=100;//in Rs.year/KW
C2=0.20;//in Rs. /unit
//Case (i)
AnnualBill1=C1*MD+C2*Energy;//in Rs.
disp(AnnualBill1,"Case(i) Annual Bill of tarrif 1 (in Rs.) :");
C=0.30;//in Rs. /unit
AnnualBill2=C*Energy;//in Rs.
disp(AnnualBill2,"Case(ii) Annual Bill of tarrif 2 (in Rs.) :");
disp("Naturally he will hoose the first tarrif.");
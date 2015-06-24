//Exa 11.4
clc;
clear;
close;
//Given Data :
format('v',9);
Energy=180000;//in kwh
LoadFactor=45;//in %/year
LoadFactor=45/100;//in fraction
//Charges=Rs. 50/KW/Annum plus 8 paise per unit
C1=50;//in Rs.year/KW
C2=8;//in paisa/unit
h=365*24;//no. of hours per year
AvgLoad=Energy/h;//in KW
MaxLoad=AvgLoad/LoadFactor;//in KW
FixCharges=MaxLoad*C1;//in Rs.
PlusCharges=(C2/100)*Energy;//in rs.
TotalTarrif=FixCharges+PlusCharges;//in Rs.
disp(TotalTarrif,"Total Annual electricity charges(in Rs.) :");
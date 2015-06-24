//Exa 6
clc;
clear;
close;
//given data :
CostofMac=80000;//in Rs.
SalvageValue=10000//in Rs.
//Profits of 1st,2nd,3rd,4th and th years
P1=20000;//in Rs.
P2=40000;//in Rs.
P3=30000;//in Rs.
P4=15000;//in Rs.
P5=5000;//in Rs.
//Total profit before depreciation
Pbd=P1+P2+P3+P4+P5;//in Rs.
disp(Pbd,"Total profit before depreciation(in Rs) : ")
AvgP=Pbd/5;//Average profit per annum
disp(AvgP,"Average profit per annum(in Rs.) : ")
//Total Depreciation of the machine
TotDep=CostofMac-SalvageValue
disp(TotDep,"Total Depreciation of the machine(in Rs.) : ")
//Average Depreciation per annum
AvgD=TotDep/5;
disp(AvgD,"Average Depreciation per annum(in Rs.) : ")
//Average annual profit after Depreciation
AvgPafterDepreciation =AvgP-AvgD;
disp(AvgPafterDepreciation,"Average annual profit after Depreciation(in Rs.) : ")
//Return on original investment
ReturnOnOrg=(AvgPafterDepreciation/CostofMac)*100;//in %
disp(ReturnOnOrg,"Return on original investment(in %) : ")
//Return on average investment
ReturnOnAvgInv=(AvgPafterDepreciation/((CostofMac+SalvageValue)/2))*100;//in %
disp(ReturnOnAvgInv,"Return on average investment(in %) : ")
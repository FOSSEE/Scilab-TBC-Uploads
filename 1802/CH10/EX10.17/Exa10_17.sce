//Exa 10.17
clc;
clear;
close;
//Given Data :
format('v',6);
P=300;//in KW
cosfi_1=0.7;//unitless
tanfi_1=tand(acosd(cosfi_1));
y=13;//in Rs./KVAR
x=130;//in Rs./KVA
cosfi_2=sqrt(1-(y/x)^2);//unitless
disp(cosfi_2,"Most Ecomnomical PF :");
tanfi_2=tand(acosd(cosfi_2));
//(ii)
LeadingKVAR=P*(tanfi_1-tanfi_2);//in KVAR
AnnSavingMD=x*[P/cosfi_1-P/cosfi_2];//in Rs.
AnnExpenditure=y*LeadingKVAR;//in Rs.
NetSaving=AnnSavingMD-AnnExpenditure;//in Rs.
disp(NetSaving,"Net Saving in Rs. :");
//Note : Answer in the book is not accurate.
//Exa 11.9
clc;
clear;
close;
//Given Data :
format('v',9);
MD=250;//in KW
PF=0.8;//power factor
cosfi=PF;//unitless
Energy=50000;//in units/annum
//Tarrif Rs. 50/KVA of max demand and 0.25paisa/unit
C1=50;//in Rs./KW
C2=0.25;//in Paise/kwh
MDKVA=MD/cosfi;//in KVA
AnnualBill1=C1*MDKVA+C2*Energy;//in RS
disp(AnnualBill1,"Annuall bill of industry(in Rs.) :");
//Note : If consumer raised the PF to unity.
PF=1;//power factor
cosfi=PF;//unitless
MDKVA=MD/cosfi;//in KVA
AnnualBill2=C1*MDKVA+C2*Energy;//in RS
disp(AnnualBill1-AnnualBill2,"Saving by consumer in the bill(in Rs.) :");
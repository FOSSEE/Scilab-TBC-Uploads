//Exa 2.16
clc;
clear;
close;
//Given data : 
R1=10;//in kohm
R2=5;//in kohm
RE=2;//in kohm
RC=1;//in kohm
VCC=12;//in volt
Beta=100;//unitless
VBE=0.7;//in volt
//Part (i)
//Formula : VBE=VBBdash-IB*RBdash-IE*RE
disp("IB is ver small : VBE=VBBdash-IE*RE");
VBBdash=(R2/(R1+R2))*VCC;//in volt
IE=(VBBdash-VBE)/(RE*10^3);//in Ampere
disp("As base current is very small IC=IE");
IC=IE;//in mA
//Formul : VCC=IC*RC+VCE+IE*RE
VCE=VCC-IC*RC*10^3-IE*RE*10^3;//in Volt
disp("Operating point is ("+string(VCE)+"V,"+string(IC*10^3)+"mA)");
//Part (ii)
RBdash=(R1*R2/(R1+R2));//in kOhm
S=(Beta+1)/(1+Beta*(RE/(RBdash+RE)));
disp("Staility factor S is : "+string(S));

//Exa 2.14
clc;
clear;
close;
//Given data :
format('v',10);
disp("To set the required operating point, value of RB will be find out. ")
IC=1;//in mA
VCE=8;//in volt
Beta=100;//unitless
VCC=12;//in volt
VBE=0.3;//in volt(For Ge)
//Prt (i)
RC=(VCC-VCE)/(IC*10^-3);//in ohm
IB=IC/Beta;//in mA
RB=(VCC-VBE-Beta*(IB*10^-3)*RC)/(IB*10^-3);//in Ohm
disp(RB/1000,"Value of RB in kOhm");
//Part (ii)
Beta=50;//unitless
IB=(VCC-VBE)/(RB+Beta*RC);//in mA
IC=Beta*IB;//in Ampere
VCE=VCC-IC*RC;//in volt
disp("New operating point is ("+string(VCE)+"V,"+string(IC*10^3)+"mA)");
//Exa 2.13
clc;
clear;
close;
//Given data
Beta=100;//unitless
IC=1;//in mA
VCC=12;//in volt
VBE=0.3;//in volt(For Ge)
//Prt (i)
IB=IC/Beta;//in mA
//Formula : VCC=VBE+IB*RB
RB=(VCC-VBE)/(IB*10^-3);//in Ampere
disp(RB/10^3,"Resistance RB in kOhm : ");
//part (ii)
Beta=50;//unitless
IB=(VCC-VBE)/RB;//in Ampere
IC=Beta*IB;//in Ampere
disp(IC*10^3,"Zero signal IC in mA:");
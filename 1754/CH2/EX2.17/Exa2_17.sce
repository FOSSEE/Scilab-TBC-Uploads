//Exa 2.17
clc;
clear;
close;
//Given data : 
R1=200;//in kohm
R2=100;//in kohm
RE=1;//in kohm
RC=1;//in kohm
VCC=9;//in volt
he=2;//in kohm
hfe=100;//unitless
hoe=0;//unitless
hre=0;//unitless
VBE=0.7;//in volt(For Si)
//Part (i)
RB=R1*R2/(R1+R2);//in kohm
VBBdash=(R2/(R1+R2))*VCC;//in volt
//Applying Kirchoff Law 
IB=(VBBdash-VBE)/(RB*10^3+RE*10^3*(1+hfe));//in Ampere
IC=hfe*IB;//in Ampere
disp(IC*10^3,"Value of IC in mA : ");
//Part (ii)
//Applying Kirchoff Law 
VCE=VCC-IC*RC*10^3-RE*1063*IB*(hfe+1);//in volt
disp(VCE,"VCE in volt :");
//Note : Ans of VCE is wrong in the book as VCC=10 V has been taken instead of 9 volt.
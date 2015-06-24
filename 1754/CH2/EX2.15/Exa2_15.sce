//Exa 2.15
clc;
clear;
close;
//Given data :
R1=50;//in kohm
R2=10;//in kohm
RE=1;//in kohm
VCC=12;//in volt
//Prt (i)
VBE=0.1;//in volt
VBBdash=(R2/(R1+R2))*VCC;//in volt
IC1=(VBBdash-VBE)/(RE*1000);//in mA
disp(IC1*1000,"At VBE=0.1V, Value of IC in mA : ");
//Part (ii)
VBE=0.3;//in volt
IC2=(VBBdash-VBE)/(RE*1000);//in mA
disp(IC2*1000,"At VBE=0.3V, Value of IC in mA : ");

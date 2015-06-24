//Ex_7_9
clc;
clear;
close;
format('v',6);
//given data :
VEE=5;////V
VCC=-5;////V
VE=1;////V
RB=20;//kohm
RE=5;//kohm
RC=5;//kohm
VBE=0.7;////V
VB=VE-VBE;///V
IB=VB/RB;///mA
IE=(VEE-VE)/RE;//mA
IC=IE-IB;//mA
VC=VCC+IC*RC;//V
Beta=IC/IB;//Current gain
Alfa=IC/IE;//Current gain
disp(VB,"VB(V) : ");
disp(IB,"IB(mA) : ");
disp(IE,"IE(mA) : ");
disp(IC,"IC(mA) : ");
format('v',5);
disp(Beta,"Beta : ");
disp(Alfa,"Alfa : ");

//Ex_7_11
clc;
clear;
close;
format('v',6);
//given data :
VBE=0.7;////V
Beta=100;///Current Gain
//Part (a)
VCC=6;////V
VEE=0;////V
VB=2;////V
RE=18;//kohm
RC=3;//kohm
VE=VB-VBE;//V
disp(VE,"(a) Emitter Voltage(V) : ");
IE=1;///mA
IC=IE*Beta/(1+Beta);///mA
VC=VCC-IC*RC;//V
if VC>VE then
    disp("Circuit is in active mode.");
end;
//Part (b)
VEE=6;////V
VCC=0;////V
VB=1;////V
RE=10;//kohm
RC=10;//kohm
VE=VB+VBE;//V
disp(VE,"(b) Emitter Voltage(V) : ");
IE=(VEE-VE)/RE;///mA
IC=IE;///mA(Assumed nearly equal)
VC=VCC+IC*RC;//V
if VC>VB then
    disp("Circuit is in saturation mode.");
end;
//Part (c)
VEE=9.5;////V
VCC=-50;////V
VB=-5;////V
RE=200;//kohm
RC=20;//kohm
VE=VB+VBE;//V
disp(VE,"(c) Emitter Voltage(V) : ");
IE=(VEE-VE)/RE;///mA;///mA
IC=IE*Beta/(1+Beta);///mA
VC=VCC-IC*RC;//V
if VC>VE then
    disp("Circuit is in active mode.");
elseif VC<VE
    disp("Circuit is in reverse active mode.")
end;
//Part (d)
VEE=-30;////V
VCC=-10;////V
VB=-20;////V
RE=6;//kohm
RC=2;//kohm
VE=VB-VBE;//V
disp(VE,"(d) Emitter Voltage(V) : ");
IE=(VEE-VE)/RE;///mA;///mA
IC=IE*Beta/(1+Beta);///mA
VC=VCC-IC*RC;//V
if VC>VE then
    disp("Circuit is in active mode.");
end;
//Note : Printing error in part (a) in the textbook. Answer is also not accurate in the textbook for part(c)

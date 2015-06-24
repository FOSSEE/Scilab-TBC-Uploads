//Exa 7.15
clc;
clear;
close;
//Given data : 
format('v',7);
//VD in section AC from RHS: VD1=(40+x)*0.02+0.17*x
//VD in section AC from LHS: VD2=(350-x)*0.015+(150-x)*0.03
//Equating two VDs we get
//x*0.02+0.17*x+0.015*x+x*0.03=350*0.015+150*0.03-40*0.02
x=(350*0.015+150*0.03-40*0.02)/0.082;//in A
VB=500-(x+40)*0.02;//in volts
disp(VB,"Potential at point B(in V) :");
VC=VB-(x*0.017);//in volts
disp(VC,"Potential at point C(in V) :");
VD=500-(350-x)*0.015;//in volts
disp(VD,"Potential at point D(in V) :");
//Note : Answer of 3rd part is given wrong in the book.
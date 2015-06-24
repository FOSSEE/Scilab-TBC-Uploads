//Exa 1.5
clc;
clear;
close;
//given data
Rc=2;//in kohm
VE=-5;//in volts
VT=25;//in mVolts
RE=4.3*1000;//in ohm
IE=(-0.7-VE)/RE;//in mA
re=(2*VT*10^(-3))/IE;//in ohm
Rc=Rc*1000;//in ohms
Ad=(Rc)/(2*re)
Ac=-(Rc/(2*RE+re))
CMRR=Ad/Ac;
//CMRR is always positive
disp(Ad,"Differential mode gain is : ")
disp(Ac,"Common mode gain is : ")
disp(-CMRR,"CMRR is : ")
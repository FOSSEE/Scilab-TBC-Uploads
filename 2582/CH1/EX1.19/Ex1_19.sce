//Ex 1.19
clc;clear;close;
format('v',5);
Beta=100;//unitless
VBE=0.715;//V
VEE=10;//V
R=5.6;//kohm
IREF=(VEE-VBE)/R;//mA
IC1=IREF/(1+2/Beta);//mA
disp(IC1,"Collector current in each transistor is equal as all are identical. It is(mA) : ");
IRC=3*IC1;//mA
disp(IRC,"Current through resistance Rc is (mA) : ");

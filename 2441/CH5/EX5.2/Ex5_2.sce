//Example 5.2
clc;clear;close;
format('v',6);
P=100;//MVA
f=50;//Hz
H=5;//kW-sec/kVA(Constant)
delP=50;//MW(Increased Load)
td=0.5;//s(Time delay)
P=P/1000;//kVA
KE=P*H;//kW-sec
delP=delP/1000;//kW(Increased Load)
KE_loss=delP*td;//kW-s
f_new=sqrt((KE-KE_loss)/KE)*f;//Hz
f_dev=(f-f_new)/f*100;//%(Frequency deviation)
disp(f_dev,"Frequency deviation(%)");

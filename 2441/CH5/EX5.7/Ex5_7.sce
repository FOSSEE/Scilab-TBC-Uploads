//Example 5.7
clc;clear;close;
format('v',5);
G=100;//MVA
f=50;//Hz
n=3000;//rpm
L=25;//MW//Load
td=0.5;//sec
H=4.5;//MW-sec/MVA
//Calculation
KE=H*G;//MW-sec////at no load
KE_Loss=L*td;//MW-sec///due to increase in load
f_new=sqrt((KE-KE_Loss)/KE)*f;//Hz
delF=(f-f_new)/f*100;//%////frequency deviation
disp(delF,"Frequency deviation(%)");

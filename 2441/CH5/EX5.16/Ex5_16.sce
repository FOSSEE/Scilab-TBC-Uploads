//Example 5.16
clc;clear;close;
format('v',7);
G=100;//MVA
f=50;//Hz
delL=60;//MW
Tc=0.35;//sec
H=5;///kWs/kVA
KE=G*1000*H;//kWs
delKE=(G-delL)*1000*Tc;////kWs///due to decrease in load
fnew=sqrt((KE+delKE)/KE) *f;//Hz
fdev=(fnew-f)/f*100;//%
disp(fnew,"New frequency(Hz)");
format('v',6);
disp(fdev,"Frequency deviation(%)");

//Example 5.15 
clc;clear;close;
format('v',6);
G=100;//MVA
f=50;//Hz
delL=50;//MW
Tc=0.4;//sec
H=5;///kWs/kVA
KE=G*1000*H;//kWs
delKE=delL*1000*Tc;////kWs///due to decrease in load
fnew=sqrt((KE+delKE)/KE) *f;//Hz
fdev=(fnew-f)/f*100;//%
disp(fnew,"New frequency(Hz)");
disp(fdev,"Frequency deviation(%)");

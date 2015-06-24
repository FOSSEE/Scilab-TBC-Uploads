//Example 6.14
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//constant
Cd=0.6;//Coefficient of discharge
B=1600/1000;//meter
D=1250/1000;//meter
ao=1.6*1.25;//m^2
H1=2+1.25/2;//meter
H2=0.8+1.25/2;//meter
H=H1-H2;//meter
Q=Cd*ao*sqrt(2*g*H);//m^3/sec or Cumec
disp(Q,"Discharge in Cumec : ");
//Answer is wrong in the book.

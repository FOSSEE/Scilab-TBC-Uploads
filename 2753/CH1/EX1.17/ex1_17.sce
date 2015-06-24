//Example 1.17: 
clc;
clear;
close;
format('v',5)
V=3;//in V
I=55;//in mA
Rdc=V/(I*10^-3);//in ohm
V2=26;//in mV
Rac=V2/I;//in ohm
disp(Rdc,"static resistance is ,(ohm)=")
disp(Rac,"dynamic resistance is ,(ohm)=")

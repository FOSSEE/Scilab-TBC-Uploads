// Example 2.6 :current
clc;
close;
format('v',7)
clear;
// given :
vs1=10;//voltage volts
r1=100;//resistance in ohms
r2=600;//resistance in ohms
r3=150;//resistance in ohms
r4=850;//resistance in ohms
rx=50;//resistance in ohms
voc=vs1*((r3/(r1+r3))-(r4/(r2+r4)));//open circuit voltage in volts
req=((r1*r3)/(r1+r3))+((r2*r4)/(r2+r4));//equivalent resistance in ohms
ix=voc/(req+rx)*10^3;//current in amperes
disp(ix,"current through Rx is (from A to B),(mA)=")


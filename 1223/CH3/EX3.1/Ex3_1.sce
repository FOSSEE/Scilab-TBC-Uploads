clear;
clc;
//Example 3.1
//let beta be "b"
b=150;//common emitter current gain
iB=15*10^-3;//(mA) base current
//assume transistor biased in forward active mode
iC=b*iB;
printf('\ncollector current=%.2f mA\n',iC)
iE=(1+b)*iB;
printf('\nemitter current=%.2f mA\n',iE)
a=b/(1+b);
printf('\ncommon base current gain=%.3f\n',a)

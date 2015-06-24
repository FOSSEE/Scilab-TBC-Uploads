//Example 3.73: inductance
clc;
clear;
close;
l1=4;//H
r1=1;//ohm
r2=1;//ohm
r3=2;//ohm
l4=2;//H
r4=2;//ohm
M=((r3*l1)-(r2*l4))/(r2+r3);//H
disp(M,"M is ,(H)=")

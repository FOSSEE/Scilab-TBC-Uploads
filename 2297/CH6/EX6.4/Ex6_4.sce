//Example  6.4//  speed
clc;
clear;
close;
//given data :
format('v',6)
fi=0.02// flux in Wb
P=4;// number of poles
A=2;//constant
Z=151*A;//turns
V=200;// in volts
Rsh=50;//shunt resistance in ohm
Ra=0.01;// armature resistance in ohm
Pr=40000;//power required  in Watts
Il=Pr/V;//load current in amperes
Ish=V/Rsh;//shunt current in amperes
Ia=Il+Ish;//armature current in amperes
E=V+(Ia*Ra);//generated voltage
N=(60*A*E)/(fi*P*Z);//rpm
disp(N,"The speed of the machine,(rpm) = ")
//answer is wrong in the textbook

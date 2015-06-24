//Example 2.23://shunt resistance 
clc;
clear;
close;
format('v',9)
ra=1000;//armature resistance in ohms
i=10;//mA
ia=500;//micro amperes
rsh1=((ra)/((i/(ia*10^-3))-1));//in ohms
i1=75;//mA
rsh2=((ra)/((i1/(ia*10^-3))-1));//in ohms
i3=100;//mA
ia3=0.4*ia;//micro amperes
rsh3=((ra)/((i3/(ia3*10^-3))-1));//in ohms
disp(rsh1,"shunt resistance when current is 10mA in ohm is")
disp(rsh2,"shunt resistance when current is 75mA in ohm is")
disp(rsh3,"shunt resistance when current is 100mA in ohm is")

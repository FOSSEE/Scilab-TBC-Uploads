//Example 8.21.1 : Average armature current
clc;
clear;
close;
//given data :
V=200;// in volts
D=50/100;// duty cycle
VL_dc=V*D;
Eb=75;// in volts
Ra=1;// in ohm
Ia=(VL_dc-Eb)/Ra;
disp(Ia,"Average armature current,Ia(A) = ")

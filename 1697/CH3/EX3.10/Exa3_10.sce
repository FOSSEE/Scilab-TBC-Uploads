//Exa 3.10
clc;
clear;
close;
//given data :
P1=30;//in KW
P1=P1*1000;//in W
P2=5000;//in W
Gdb=10*log10(P1/P2);//unitless
disp(Gdb,"Front to back ratio = Gdb = ");
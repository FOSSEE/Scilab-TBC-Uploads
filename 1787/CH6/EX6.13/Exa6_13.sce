//Exa 6.13
clc;
clear;
close;
//given data
delVCE=10-5;//in Volts
delIC=5.8-5;//in mA
rin=delVCE/delIC;//in Kohm
disp(rin,"Dynamic output resistance in Kohm : ");
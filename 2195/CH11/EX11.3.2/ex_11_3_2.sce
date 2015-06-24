//Example 11.3.2 // wattmeter error and correction figure
clc;
clear;
close;
//given data :
P1=120;// in watt
V=114;//in volts
I=1;//in A
P=V*I;
error1=P-P1;
disp(error1,"correction figure in (W)")
error2=(error1/P1)*100;
disp(error2,"wattmeter error in %")

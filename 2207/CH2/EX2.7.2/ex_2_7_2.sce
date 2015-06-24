//Example 2.7.2;//MINIMUM WIDTH
clc;
clear;
close;
//given data :
format('v',7)
v=100;//in volts
r=20;//in ohms
l=0.5;//in henry
il=50;//in mA
t1=log(1-((il*10^-3)/(v/r)))/(-(r/l));//
disp(t1*10^6,"minimum pulse width in micro seconds is")

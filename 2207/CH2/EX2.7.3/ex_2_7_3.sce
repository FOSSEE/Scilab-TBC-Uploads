//Example 2.7.3;//MINIMUM WIDTH
clc;
clear;
close;
//given data :
format('v',7)
v=207;//in volts
r=10;//in ohms
l=1;//in henry
il=100;//in mA
t1=log(1-((il*10^-3)/(v/r)))/(-(r/l));//
disp(t1*10^6,"minimum pulse width in micro seconds is")

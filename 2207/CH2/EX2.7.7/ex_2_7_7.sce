//Example 2.7.7;//resistance
clc;
clear;
close;
//given data :
format('v',4)
il=50;//in mA
pw=50;//pulse width in micro seconds
i=10;//in mA
v=100;//in volts
if1=50;//in mA
rmax=(v/(if1-i));//maximum resistance in killo ohms
disp(rmax,"maximum resistance in kilo ohm is")

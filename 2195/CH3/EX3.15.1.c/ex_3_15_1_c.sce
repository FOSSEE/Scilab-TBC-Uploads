//Example 3.15.1.c//voltage
clc;
clear;
close;
format('v',5)
r1=25;// in kilo ohms
r2=5;//in kilo ohms
v=30;//in volts
vr2=(r1/(r1+r2))*v;// voltage in volts across 5 kilo ohms resistance
//case 2
s2=20;//sensivity in kilo ohms/volts
v1=10;// in volts
rm2=v1*s2;//in kilo ohms
req1=((rm2*r2)/(rm2+r2));//equivalent resistance in ohms
vrb2=((req1/(r1+req1)))*v;// voltmeter reading when sensivity is 1 kilo ohms /V
disp(vrb2," voltmeter reading when sensivity is 1 kilo ohms /V in volts")

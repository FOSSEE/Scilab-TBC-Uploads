//Example 3.15.1.b//voltage
clc;
clear;
close;
format('v',5)
r1=25;// in kilo ohms
r2=5;//in kilo ohms
v=30;//in volts
vr2=(r1/(r1+r2))*v;// voltage in volts across 5 kilo ohms resistance
//case 1
s1=1;//sensivity in kilo ohms/volts
v1=10;// in volts
rm1=v1*s1;//in kilo ohms
req=((rm1*r2)/(rm1+r2));//equivalent resistance in ohms
vrb1=((req/(r1+req)))*v;// voltmeter reading when sensivity is 1 kilo ohms /V
disp(vrb1," voltmeter reading when sensivity is 1 kilo ohms /V in volts")

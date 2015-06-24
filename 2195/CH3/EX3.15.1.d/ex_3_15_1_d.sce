//Example 3.15.1.d//error
clc;
clear;
close;
format('v',5)
r1=25;// in kilo ohms
r2=5;//in kilo ohms
v=30;//in volts
vr2=(r2/(r1+r2))*v;// voltage in volts across 5 kilo ohms resistance
//case 1
s1=1;//sensivity in kilo ohms/volts
v1=10;// in volts
rm1=v1*s1;//in kilo ohms
req=((rm1*r2)/(rm1+r2));//equivalent resistance in ohms
vrb1=((req/(r1+req)))*v;// voltmeter reading when sensivity is 1 kilo ohms /V
//case 2
s2=20;//sensivity in kilo ohms/volts
v1=10;// in volts
rm2=v1*s2;//in kilo ohms
req1=((rm2*r2)/(rm2+r2));//equivalent resistance in ohms
vrb2=((req1/(r1+req1)))*v;// voltmeter reading when sensivity is 1 kilo ohms /V
er1=(vr2-vrb1)/vr2;//voltmeter 1 error
er2=(vr2-vrb2)/vr2;//voltmeter 2 error
disp(er1*100,"voltmeter 1 error in percentage")
disp(er2*100,"voltmeter 2 error in percentage")
//answer is wrong in the textbook

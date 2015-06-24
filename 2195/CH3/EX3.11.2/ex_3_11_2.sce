//Example 3.11.2//accurate voltmeter reading
clc;
clear;
close;
format('v',6)
r1=50;// in killo ohms
r2=50;//in killo ohms
v=100;//in volts
vr2=(r1/(r1+r2))*v;// voltage in volts
//case 1
s1=12000;//sensivity in ohms/volts
rm1=r1*s1*10^-3;//in killo ohms
req=((rm1*r1)/(rm1+r1));//equivalent resistance in ohms
v1=((req/(r1+req)))*v;// voltmeter reading when sensivity is 12000 ohms /V
//case 2
s2=15000;//sensivity in ohms/volts
rm2=r1*s2*10^-3;//in killo ohms
req1=((rm2*r1)/(rm2+r1));//equivalent resistance in ohms
v2=((req1/(r1+req1)))*v;// voltmeter reading when sensivity is 15000 ohms /V
disp(v1,"voltmeter reading when sensivity is 12000 ohms /V in volts")
disp(v2,"voltmeter reading when sensivity is 15000 ohms /V in volts, this voltmeter will measure the correct value")

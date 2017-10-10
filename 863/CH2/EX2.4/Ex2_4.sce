//Caption:Determine (a)Ec at 1.5ms (b)Ec at 6ms
//Ex2.4
clc;
clear;
close;
r1=1//Resistor(in kilo ohm)
c1=1//Capacitance(in micro farad)
e1=10//Voltage(in volts)
r2=20//Resistor(in kilo ohm)
c2=0.1//Capacitance(in micro farad)
e2=12//Voltage(in volts)
t1=r1*c1*0.78
e=e1*1
ec1=e*t1
t2=r2*c2*0.025
E=e2*1
ec2=E*t2
disp(ec2,ec1,'(a)Ec at 1.5ms(in volts) and (b)Ec at 6ms(in volts)=')
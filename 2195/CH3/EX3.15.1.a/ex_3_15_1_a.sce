//Example 3.15.1.a//voltage
clc;
clear;
close;
format('v',6)
r1=25;// in kilo ohms
r2=5;//in kilo ohms
v=30;//in volts
vr2=(r2/(r1+r2))*v;// voltage in volts across 5 kilo ohms resistance
disp(vr2,"voltage in volts across 5 kilo ohms resistance")

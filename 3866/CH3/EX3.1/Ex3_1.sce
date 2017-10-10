clc; clear; close;

r1=0.027;//resistivity in microohm/m
t1=1;//in micrometer
L=35;//in micrometer
T1=5;//in micrometer
R1=r1*(L/T1)/t1;
t2=0.5;//in micrometer
T2=0.18;//in micrometer
R2=r1*(L/T2)/t2;
r2=0.017;//in microohm/m
t3=0.4;//in micrometer
T3=0.13;//in micrometer
R3=r2*(L/T3)/t3;
disp(R1,'resistance(in ohm) of aluminium wire(1980)=');
disp(R2,'resistance(in ohm) of aluminium wire(2000)=');
disp(R3,'resistance(in ohm) of copper wire(2002)=');
//answers vary due to round off error

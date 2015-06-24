
//Example 2.1. // ameter current
clc;
clear;
close;
//given data :
Rq1=100; // in kilo-ohm
Rq2=Rq1;
Rq=Rq2;
gm=0.005; // in siemens
Rm=50; // in ohm
Rd=10; // in kilo-ohm
V1=1; // in volts
i=((gm*Rq*10^2*Rd*10^2)/(Rq*10^2+Rd*10^2)*V1)/(((2*Rd*10^2*Rq*10^2)/(Rd*10^2+Rq*10^2))+Rm);
disp(i*10^3,"the ammeter current,i(mA) = ")

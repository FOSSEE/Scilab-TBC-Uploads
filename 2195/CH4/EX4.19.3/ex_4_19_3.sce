//Example 4.19.3: design
clc;
clear;
close;
format('v',6)
v1=100;// in volts
v2=30;//in volts
v3=103;// in volts
v4=1;//in volts
x=9;//assume input resistance in mega ohms
r4=(v4/v3)*x*10^3;//in kllo ohms
r3=(((v4/v1)*x*10^6)-(r4*10^3))*10^-3;//in kilo ohms
r2=(((v4/v2)*x*10^6)-((r4+r3)*10^3))*10^-3;// in kilo ohms
r1=9*10^6-((r2+r3+r4)*10^3);// in ohms
disp(r4,"resistance (R4) in kilo ohms is")
disp(r3,"resistance (R3) in kilo ohms is")
disp(r2,"resistance (R2) in kilo ohms is")
disp(r1*10^-6,"resistance (R1) in mega ohms is")

//Example 8.6.3: unknown resistance and capacitance
clc;
clear;
close;
r1=10;//in kilo ohms
r2=50;//in kilo ohms
r3=100;//in kilo ohms
c3=100;//in micro farads
rx=((r2*10^3*r3*10^3)/(r1*10^3))*10^-3;//unknown resistance in killo ohms
cx=((r1*10^3*c3*10^-6)/(r2*10^3))*10^6;// unknown capacitance in micro farads
disp(rx,"unknown resistance in kilo ohms")
disp(cx,"unknown capacitance in micro farads")

// Example 5.1:COUPLING CAPACITOR
clc;
clear;
close;
Rs=10;//series resistance in killo ohms
Xc1= Rs/10;//reactance at 20Hz
C1=(1/(2*%pi*20*Xc1*10^3))*10^6;//CAPACITANCE IN MICRO FARAD
disp(C1,"capacitance in micro farad is  as this is not a standar value will select 10 micro farad")

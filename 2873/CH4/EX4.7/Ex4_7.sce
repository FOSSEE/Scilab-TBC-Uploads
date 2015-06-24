// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 7")
T1=(1150+273);//temperature of source in K
T2=(27+273);//temperature of sink in K
disp("highest efficiency is that of carnot engine,so let us find the carnot cycle efficiency for given temperature limits")
disp("n=1-(T2/T1)")
n=1-(T2/T1)
disp("or n=n*100 %")
n=n*100

//scilab 5.4.1
//Windows 7 operating system
//chapter 15 Active Filters
clc
clear
Ao=5//Ao=high frequency gain of a given first-order Butterworth active HP filter
//Ao=(R1+R2)/R1
R1=1000//R1=Assumed resistance in ohms
R2=(Ao*R1)-R1
fc=200//fc=given cut-off frequency in Hz
//fc=1/(2*%pi*R*C)
R=5*1000//R=Assumed resistance in ohms
C=1/(2*%pi*R*fc)
disp("The designed values of resistance and capacitance for a high-pass Butterworth filter are:")
disp("kilo ohm",R1/1000,"R1=")
disp("kilo ohm",R2/1000,"R2=")
disp("kilo ohm",R/1000,"R=")
disp("micro Farad",C/10^-6,"C=")

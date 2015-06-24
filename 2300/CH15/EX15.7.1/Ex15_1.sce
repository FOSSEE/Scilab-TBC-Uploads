//scilab 5.4.1
//Windows 7 operating system
//chapter 15 Active Filters
clc
clear
fc=1000//fc=given cut-off frequency in Hz
A=-56//A=required gain to be dropped by this much amount in dB
//Also,A=normalized gain of Butterworth filter=|A(jw)/Ao|
f=10*1000//f=given frequency in Hz where the normalized gain is dropped by given amount
//|A(jw)/Ao|=(-20)*n*log10(w/wc) where n=order of the filter
//|A(jw)/Ao|=(-20)*n*log10(f/fc)
n=A/((-20)*log10(f/fc))//n=order of Butterworth low-pass filter
disp(ceil(n),"Order of given filter to be designed is (n)=")
//As n=3 (from above calculation) we need cascading of first-order section and second-order section
//For n=3
k=0.5//k=damping factor
Ao=3-(2*k)//Ao=DC gain for each op-amp in a given Butterworth Filter to be designed
R1=10*1000//R1=Assumed resistance in ohms
//Ao=(R1+R2)/R1
R2=(Ao*R1)-R1
//fc=1/(2*%pi*R*C)
R=1000//R=Assumed resistance in ohms
C=1/(2*%pi*R*fc)
format("v",5)
disp("The designed values of resistance and capacitance for a low-pass Butterworth filter are:")
disp("kilo ohm",R1/1000,"R1=")
disp("kilo ohm",R2/1000,"R2=")
disp("kilo ohm",R/1000,"R=")
disp("micro Farad",C/10^-6,"C=")



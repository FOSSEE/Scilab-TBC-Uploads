// Example 7.16:resonant frequency 
clc;
clear;
close;
R=500;//resistance in ohms
C1=0.01;//capacitance of tunned circuit in pico farad
C2=10;//capacitance of tunned circuit in pico farad
C=(C1*C2)/(C1+C2);//total capacitance in micro farad
L=0.06;//INDUCTANCE of tunned circuit in  henry
fs=((1/(2*%pi*sqrt(L*C1*10^-12)))*10^-6);//series tunned frequency in mega hertz
C=(C1*C2)/(C1+C2);//total capacitance in pico farad
fp=(1/(2*%pi*sqrt(L*C*10^-12))*10^-6);//parralel tunned frequency in mega hertz
disp(fs,"series tunned frequency in mega hertz is")
disp(fp,"parallel tunned frequency in mega hertz is")


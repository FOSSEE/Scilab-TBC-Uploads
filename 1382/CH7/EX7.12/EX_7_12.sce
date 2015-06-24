// Example 7.12:resonant frequency
clc;
clear;
close;
Cs=0.08;//capacitance of tunned circuit in pico farad
Ls=0.8;//series INDUCTANCE of tunned circuit in henry
Cp=1;//parallel capacitance in pico farad
Rs=5;//SERIES RESISTANCE IN KILLO OHMS
fs=round((1/(2*%pi*sqrt(Ls*Cs*10^-12)))*10^-3);//series tunned frequency in killo hertz
fp=round(((1/(2*%pi))*sqrt((1+Cs/Cp)/(Ls*Cs*10^-12)))*10^-3);//parralel tunned frequency in killo hertz
disp(fs,"series tunned frequency in killo hertz is")
disp(fp,"parallel tunned frequency in killo hertz is")

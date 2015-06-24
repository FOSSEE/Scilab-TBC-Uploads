// Example 7.33:resonant frequency and quality factor
clc;
clear;
close;
Cs=0.06;//capacitance of tunned circuit in pico farad
Ls=0.5;//series INDUCTANCE of tunned circuit in henry
Cp=1;//parallel capacitance in pico farad
Rs=5;//SERIES RESISTANCE IN KILLO OHMS
fs=round((1/(2*%pi*sqrt(Ls*Cs*10^-12)))*10^-3);//series tunned frequency in killo hertz
fp=round(((1/(2*%pi))*sqrt((1+Cs/Cp)/(Ls*Cs*10^-12)))*10^-3);//parralel tunned frequency in killo hertz
Pc= ((fp-fs)/fs)*100;//percentage by which series resonant frequency exceeds the parallel resonant frequency
Qs= round((2*%pi*fs*10^3*Ls)/(Rs*10^3));//quality factor with series resonant frequency
Qp= round((2*%pi*fp*10^3*Ls)/(Rs*10^3));//quality factor with parallled resonant frequency
disp(fs,"series tunned frequency in killo hertz is")
disp(fp,"parallel tunned frequency in killo hertz is")
disp(Qs,"quality factor with series resonant frequency is")
disp(Qp,"quality factor with paralled resonant frequency is")

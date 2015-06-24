clc;
clear;

//f(t)=5cos(Wc*t+3sin(2000*t)+5sin(2000*pi*t))

fm=2000*%pi/(2*%pi); //bandwidth is the highest frequency component

//a)

Freq_dev=(6000+10000*%pi)/(2*%pi);

//b)

B=Freq_dev/fm;

//c)
Phase_dev=8;//Highest value of[3sin(2000t)+5sin(2000*pi*t)]

//d)
Bw= 2*(fm+Freq_dev);

disp(Freq_dev," a) Frequency Deviation(in Hz)=");
disp(B," b) Devaition Ratio=");
disp(Phase_dev," c) Phase Deviation( in rad)=");
disp(Bw," d) Bandwidth( in Hz)=")

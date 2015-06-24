//Caption: Nquist Rate,time interval
//Example 3.2 
//page no 103
//Find Nquist Rate and Nquist time interval
//given
clc;
clear;
w1=5000*%pi;
w2=3000*%pi;
f1=w1/(2*%pi);
f2=w2/(2*%pi);
fm=f1;//fm = maximum frquency is present at the signal
disp(" Hz",f1,"i) maximum frquency of the signal is");

fs=2*fm;//Nyquist rate
disp(" Hz",fs,"ii) Nquist Rate of the given Signal is");
Ts=1/(2*fm);//frequncy =1/time
disp("m Sec",Ts*10^3,"iii) Nquist Interval of the given signal is");


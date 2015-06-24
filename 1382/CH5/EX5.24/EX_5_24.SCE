// Example 5.23:corner frequency and bandwidth
clc;
clear;
close;
tr=16;//rise time in micro second
V=100;//voltage in milli volts
Vd=90;//voltage in milli volts
f=5;//frequecny in killo hertz
fh= (0.35/(tr*10^-6))*10^-3;//upper cut off frequency in killo hertz
P= ((V-Vd)/V)*100;//
fl=(P*10^3*f)/(100*%pi);//lower cut off frequency in hertz
BW=(fh*10^3-fl)*10^-3;//bandwith in killo hertz
disp(fh,"upper cut off frequency in killo hertz")
disp(fl,"lower cut off frequency in hertz")
disp(BW,"bandwith in killo hertz")

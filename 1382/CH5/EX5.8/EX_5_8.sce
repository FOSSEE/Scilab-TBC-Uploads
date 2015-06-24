// Example 5.8:3-db frequency and bandwidth
clc;
clear;
close;
Cp=1;//PARALLEL capacitance IN PICO FARAD
Cs=2;//series capacitance IN micro FARAD
rs=1;//series resistance in killo ohms
rp=10;//PARALLEL resistance in killo ohms
ts= ((rs+rp)*10^3*Cp*10^-12);//time constant
tp= ((rs*rp)/(rs+rp)*10^3*Cp*10^-12);//time constant
fl= (1/(2*%pi*ts))*10^-6;//lower frequency in mega hertz
fh= (1/(2*%pi*tp))*10^-6;//upper frequency in mega hertz
BW=fh-fl;//bandwidth in mega hertz
disp(fl,"lower 3 dB frequency in mega hertz")
disp(fh,"upper 3 dB frequency in mega hertz")
disp(BW,"bandwidth in mega hertz is")

// Example 5.9:3-db frequency and bandwidth
clc;
clear;
close;
Cp=1;//PARALLEL capacitance IN PICO FARAD
Cs=2;//series capacitance IN micro FARAD
rs=1;//series resistance in killo ohms
rp=2;//PARALLEL resistance in killo ohms
ts= ((rs+rp)*10^3*Cs*10^-6);//time constant
tp= ((rs*rp)/(rs+rp)*Cp*10^-12);//time constant
fl= (1/(2*%pi*ts));//lower frequency in  hertz
fh= (1/(2*%pi*tp));//upper frequency in  hertz
BW=fh-fl;//bandwidth in  hertz
ts= (rs+rp)*10^3*Cs*10^-12;//time constant
disp(ts," time constant in second is")
disp(fl,"lower 3 dB frequency in  hertz")
disp(fh,"upper 3 dB frequency in  hertz")
disp(BW,"bandwidth in hertz is")

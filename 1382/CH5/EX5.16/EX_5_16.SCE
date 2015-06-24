// Example 5.15:TIME CONSTANTS , MIDBAND VOLTAGE GAIN AND COERNER FREQUENCIES
clc;
clear;
close;
Rl=4;//load resistance in killo ohms
Rs=250;//SERIES RESISTANCE IN OHMS
rpi= 2;//resistance IN KILLO OHMS
Re=0.2;// in kilo ohms
C1=2;//capacitance in micro farad
Cl=50;//capacitance in pico farad
ts=(Rs*10^-3+rpi)*10^3*C1*10^-3;//open circuit time constant in milli second
tp=Rl*Cl*10^-3;//short circuit time constant in micro second
gm= 6.5//transconductance in milli ampere per volts
Av= (((gm*10^-3*rpi*10^3*Rl*10^3))/(Rs*10^-3+rpi)*10^3)*10^-5;//mid voltage gain
fl=(1/(2*%pi*ts*10^-3));//lower cut off frequency in hertz
fh=(1/(2*%pi*tp*10^-6))*10^-6;//upper cut off frequency in mega hertz
disp (ts,"open circuit time constant in milli second is")
disp(tp,"short circuit time constant in micro second")
disp(Av,"maximum gain is")
disp(fl,"lower cut off frequency in hertz")
disp(fh,"upper cut off frequency in mega hertz")

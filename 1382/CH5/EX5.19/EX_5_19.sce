// Example 5.18:bandwidth and capacitance
clc;
clear;
close;
Vt=26;//voltage in milli volts
ft=500;//frequecy in mega hertz
Ic=1;//collector current in mili ampere
Bo=90;//
fb=ft/Bo;//frequency in mega hertz
Cmu=0.2;//capacitance in pico farad
x= ((Ic*10^-3)/(2*%pi*Vt*10^-3*ft*10^6))*10^12;//
Cpi= x-Cmu;//
disp(fb,"bandwidth in mega hertz")
disp(Cpi,"capacitance of the transistor in pico farad")

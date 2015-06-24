// Example 5.7:corner frequency and maximum magnitude asymptote
clc;
clear;
close;
Cp=2;//PARALLEL RESISTANCE IN PICO FARAD
rs=2;//series resistance in killo ohms
rp=10;//PARALLEL resistance in killo ohms
tp= ((rs*rp)/(rs+rp)*10^3*Cp*10^-12);//time constant
f= (1/(2*%pi*tp))*10^-6;//corner frequency in mega hertz
Am= rp/(rp+rs);//maximum amplitude
Amd= 20*(log10(Am));//maximum magnitude aymptote is dB
disp(f,"corner frequency in mega hertz")
disp(Amd,"maximum magnitude aymptote is dB is")


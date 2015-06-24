//Caption:Calculate (i)-power gain in dB ,(ii)-power gain if it is USB converter.
//Exa:9.3
clc;
clear;
close;
f_s=2*10^9;//in Hz
f_p=12*10^9;//in Hz
R_i=16;
R_s=1000;
A_p=10*log((f_p-f_s)/f_s);
A_p_usb=10*log((f_p+f_s)/f_s);
disp(log(10),'Power gain (in dB) =');
disp(A_p_usb,'Power gain as USB converter (in dB) =');
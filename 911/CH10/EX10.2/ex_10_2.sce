//example 10.2//
clc
//clears the screen//
clear
//clears all variables//
a=6.25
//LSD A(0) in mV//
b=a*2;
//LSD B(0) in mV//
c=a*4;
//LSD C(0) in mV//
d=a*8;
//LSD D(0) in mV//
a1=a*10;
b1=a1*2;
c1=a1*4;
d1=a1*8;
a2=a*100;
//MSD A(2) in mV//
b2=a2*2;
//MSD B(2) in mV//
c2=a2*4;
//MSD C(2) in mV//
d2=a2*8;
//MSD D(2) in mV//
fs=(a+d+a1+d1+a2+d2)/1000;
//Full scale analog output in volts//
disp(fs,'Full scale analog output in volts = ')
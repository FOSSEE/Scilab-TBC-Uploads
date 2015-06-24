// Example 8.7.a //dispersion equalization penalty
clc;
clear;
close;
sg=0.65;// ns km^-1
l=8;//km
st=sg*l;//ns
bt=20;//M bit s^-1
dlw=2*(2*st*10^-9*bt*10^6*sqrt(2))^4;//dB
st1=sg*sqrt(l);//ns
dlw1=2*(2*st1*10^-9*bt*10^6*sqrt(2))^4;//dB
disp(dlw,"dispersion equalization penalty in dB without mode coupling at bit rate of 20 M bit s^-1")
disp(dlw1,"dispersion equalization penalty in dB with mode coupling at bit rate of 20 M bit s^-1")
//penalty with mode coupling is calculated wrong in the book

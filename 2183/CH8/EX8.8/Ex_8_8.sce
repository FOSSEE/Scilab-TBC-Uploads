
// Example 8.8 //bit rate
clc;
clear;
close;
ts=8;//ns
l=8;//km
tn=4;//ns
tn1=tn*l;//ns
tc=1;//
tc1=tc*l;//ns
td=5;//ns
tsys=1.1*sqrt(ts^2+tn1^2+tc1^2+td^2);//ns
btmax=(0.7/(tsys*10^-9))*10^-6;//M bit/s
bt=btmax/2;//
disp(bt,"maximum bit rate for NRZ format in MHz")

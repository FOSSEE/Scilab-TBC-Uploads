// Example 8.9.b;//Link length
clc;
clear;
close;
pi=-3;//dBm
po=-42;//dBm
ac=2;//dBm
ma=8;//dBm
afc=0.4;//dBm
aj=0.1;//dBm
l=((pi-po-ac-ma)/(afc+aj));//km
disp(l,"link length when operating at 500 M bit/s in km is")

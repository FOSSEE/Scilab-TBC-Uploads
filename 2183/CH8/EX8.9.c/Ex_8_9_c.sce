// Example 8.9.c;//Link length
clc;
clear;
close;
pi=-3;//dBm
po=-42;//dBm
ac=2;//dBm
ma=8;//dBm
afc=0.4;//dBm
aj=0.1;//dBm
dl=1.5;//dbm
l=((pi-po-ac-ma-dl)/(afc+aj));//km
disp(l,"link length when dispersion equalisation penalty is included in km is")

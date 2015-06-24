//Example 7.10: Current and time taken
clc;
clear;
close;
//given data :
V=36;// speed in km/h
W=120;// in tonne
G=2;// in per cent
r=2*9.81;// in N/tonne
Ft=(98.1*W*G)+(W*r);
e=88/100; // efficiency of motors and gear
VL=1500;//line voltage in volts
Po=(Ft*V)/3600;
Pi=Po/e;
I=(Pi*1000)/VL;
bc=((98.1*(2+(0.1*2)))/(277.8*1.1));//in kmphps
tt=V/bc;//in seconds
disp(I,"current required in amperes is")
disp(round(tt),"time taken to come to rest in seconds is")

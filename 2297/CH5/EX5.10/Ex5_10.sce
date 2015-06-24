// Example 5.10;true resistance of the unknown resistor  , percentage error and reading voltmeter
clc;
clear;
// given :
format('v',7)
disp("part (i)")
ra=0.1;//ohms
vr=18;//voltage in volts
am=0.2;//current in amperes
apr=vr/am;//in ohms
rv=5000;//ohms
im=vr/rv;//amperes
rxi=am-(im);//in amperes
rx=vr/rxi;//ohms
disp(rx,"true value of resistance is,(Ohm)=")
per=((rx-apr)/rx)*100;//percentage error
disp("part (ii)")
disp(per,"percentage error is,(%)=")
rvv=am*(ra+rx);//reading of voltmeter
disp("part (iii)")
disp(rvv,"reading of voltmeter is,(V)=")

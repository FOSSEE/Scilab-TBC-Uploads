//Example 2.15://load current
clc;
clear;
close;
rw=3550;//reading of wattmeter
rp=806;//watts
ph=atand((sqrt(3)*rp)/rw);//in degree
pf=cosd(ph);//power factor
v=440;//volts
i=((rw)/(sqrt(3)*v*pf));//amperes
disp(round(i),"load current in amperes is")

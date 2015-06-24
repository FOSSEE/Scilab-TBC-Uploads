//Example 4.11:measuring range,resulution,working current,setting of the rheostata
clc;
clear;
close;
sd=18;//steps
v1=0.1;//V
mr=(sd*v1)+v1;//V
disp(mr,"measuring range of the potentiometer is,(V)=")
dv=100;//divisions
rs=(v1/dv)*(1/2);//mV
disp(rs*10^3,"resolution is,(mV)=")
dr=10;//ohm
cdd=v1/dr;//A
disp(cdd*10^3,"current through the dial is,(mA)=")
wbc=6;//V
rsv=wbc-mr;//V
sh=rsv/cdd;//ohm
disp(sh,"setting of the rheostat is,(ohm)=")

//Example 3.53: resistance
clc;
clear;
close;
em=500;//volts
i1=0.8;//mA
r=30;//killo ohms
i2=0.4;//mA
ep=i1*r;//volts
en=i2*r;//volts
rv=50;//k-ohm
rp=((em-ep-en)/en)*r*10^3;//ohm
rn=((em-ep-en)/ep)*r*10^3;//
disp(rp*10^-6,"R1 is,(M-ohm)=")
disp(rn*10^-6,"R2 is,(M-ohm)=")


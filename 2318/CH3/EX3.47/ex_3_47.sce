//Example 3.47: resistance
clc;
clear;
close;
em=500;//volts
ep=50;//volts
en=150;//volts
rv=50;//k-ohm
rp=((em-ep-en)/en)*rv*10^3;//ohm
rn=((em-ep-en)/ep)*rv*10^3;//
disp(rp*10^-6,"Rp is,(M-ohm)=")
disp(rn*10^-6,"Rn is,(M-ohm)=")


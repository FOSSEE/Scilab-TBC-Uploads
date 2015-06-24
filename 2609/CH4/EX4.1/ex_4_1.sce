////Ex 4.1
clc;
clear;
close;
format('v',9);
AOL=2*10^5;//unitless
fo=5;//Hz
ACL=100;//unitless
SF=AOL/ACL;//unitless
fodash=SF*fo;//Hz
disp(fodash/1000,"Bandwidth with feedback(kHz)");

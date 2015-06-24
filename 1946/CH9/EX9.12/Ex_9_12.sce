// Example 9.12;//Maximuum bandwidth
clc;
clear;
close;
tr=5*10^-12;//electron transit time in pico second
G=70;//photo conductive gain
Bm=(1/(2*%pi*tr*G))*10^-6;//Maximum bandwidth
disp(Bm,"Maximum bandwidth in mega hertz is")

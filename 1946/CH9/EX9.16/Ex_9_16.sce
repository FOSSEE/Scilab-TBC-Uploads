// Example 9.16;//Maximuum bandwidth
clc;
clear;
close;
tr=4.5*10^-12;//electron transit time in  second
G=80;//photo conductive gain
Bm=(1/(2*%pi*tr*G))*10^-9;//Maximum bandwidth
disp(Bm,"Maximum bandwidth in giga hertz is")

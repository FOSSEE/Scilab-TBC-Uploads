//Example 2.10 page 42
//Using Example 2.9, determine the quantization error when the analog
//input is 3.2 volts.


clc,clear,close;
xmin = 0, xmax = 5;//volts
m = 3;//bits

L = 2^m;

delta = (xmax-xmin)/L;

x = 3.2;

xq = xmin+5*delta;

eq = xq-x;
disp("eq = "+string(eq));
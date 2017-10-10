//Example 2.9 Page 39
//Assuming that a 3-bit ADC channel accepts analog input ranging from 0 to 5
//volts, determine the following:
//a. number of quantization levels
//b. step size of the quantizer or resolution
//c. quantization level when the analog voltage is 3.2 volts

clc,clear,close;
xmin = 0, xmax = 5;//volts
m = 3;//bits

L = 2^m;
disp("L = "+string(L)+" bits");

delta = (xmax-xmin)/L;
disp("delta = "+string(delta)+" volts");

x = 3.2*delta/6.25
i = round((x-xmin)/delta);
disp("i= "+string(i)+" volts");

xq = xmin+5*delta;
disp("xq= "+string(xq)+" volts");

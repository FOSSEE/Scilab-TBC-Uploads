// Example 7.13 On the basis of the followinf data, compute the whole sale price index number for the 5 groups combined.
clc;
clear;
W=[50 2 3 16 29];
I=[241 221 204 256 179];
IW=I.*W;
IN=sum(IW)/100;
disp(IN,"Index number of Wholesale Price")


//sum to infinity series 5 - 1 + 1/5 - ......
clear;
clc;
close;
a=5;r=-1/5;//given
//using the formula
S_infinity=string('a/(1-r)');
Sum=evstr(S_infinity)

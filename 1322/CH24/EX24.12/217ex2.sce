
//sum of 7 terms of the series 4,-8,16,....
clear;
clc;
close;
r=-8/4;a=4;n=7;//given
//using the formula
S=string('a*(r^(n)-1)/(r-1)');
//substituting the values 
Sum=evstr(S)





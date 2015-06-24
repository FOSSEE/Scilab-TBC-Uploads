//Graphical//
//Example 8.3.2 
//mapping = (z-(z^-1))/T
//To convert analog filter into digital filter
clear;
clc;
close;
s = poly(0,'s');
H = 1/((s+0.1)^2+9)
T =1;//Sampling period T = 1 Second
z = poly(0,'z');
Hz = horner(H,(1/T)*(z-(z^-1)))

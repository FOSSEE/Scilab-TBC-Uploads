// Exa 5.22
clc;
clear;
close;
// given data 
fomax=100;// in KHz
Resolution=2;//in Hz
flowest=Resolution;//in Hz
fclk=fomax*2.2;//in KHz
// formula: 2^n=fclk/flowest
n=(log10(fclk*1000/flowest))/log10(2);
disp(fclk,"Frequency of reference oscillator in KHz is :");
disp(ceil(n),"No. of bits needed is :");
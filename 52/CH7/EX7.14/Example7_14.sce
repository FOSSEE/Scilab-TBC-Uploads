//Example 7.14
//To Compare the Varience of Output due to A/D Conversion process
//y(n)=0.8y(n-1)+x(n)
clear;
clc ;
close ;
n=8;  //Bits
r=100;  //Range
Q=2*r/(2^n);  //Quantization Step Size
Ve=(Q^2)/12;
Vo=Ve*(1/(1-0.8^2));
disp(Q,'QUANTIZATION STEP SIZE =');
disp(Ve,'VARIANCE OF ERROR SIGNAL =');
disp(Vo,'VARIANCE OF OUTPUT =');
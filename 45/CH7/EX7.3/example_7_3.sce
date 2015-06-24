//example 7.3 
clc;
clear;
//ppm = input('Enter the stability in parts per million(PPM):');
//clk_frq = input('Enter the clock frequency in MHz:' );
ppm= 5//taking  the given values 
clk_frq= 5 
mill= clk_frq; //making necessary calculations 
pp = mill*ppm;
pp = round(pp);
clk_frq = clk_frq*10^6;
o(1,1)=clk_frq-pp;
o(1,2)=clk_frq+pp;
printf('The clock frequency will be somewhere between %d and %d Hz',o);//displaying the result 
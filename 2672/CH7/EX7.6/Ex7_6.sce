//Ex_7_6
clc;
clear;
close;
format('v',6);
//given data : 
IE=10;//mA
IB=5;///mA(Base Current)
IC=IE-IB;//mA(Collector Current)
BetaR=IC/IB;//unitless
alfaR=IC/IE;//current gain
disp(BetaR,"BetaR=");
disp(alfaR,"alfaR=");
//Answer is wrong in the book.

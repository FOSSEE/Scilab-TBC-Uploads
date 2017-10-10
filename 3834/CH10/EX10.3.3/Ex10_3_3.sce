//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.3.3
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given
RIN=1E-16;//relative intensity in 1/Hz
P=100E-6;//power received in W
BW=100E+6;//Receiver bandwidth in Hz

PN=sqrt(RIN*(P^2)*BW);//The average noise power detected by receiver W

mprintf("The average noise power detected by receiver = %.2f uW",PN*1E+6);
//multiplication by 1e6 to convert unit to W from uW 

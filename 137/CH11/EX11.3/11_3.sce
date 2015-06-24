//page 501
// example 11.3(Assuming SI units)
// autocorrelation function of given signal is A^2/2 * cos(wct)
clc;
A=2;
wct=input("enter the value of wct");
Rx=((A^2)/2)* cos(wct);
disp(+'Watt',Rx,"mean square value of the process is");
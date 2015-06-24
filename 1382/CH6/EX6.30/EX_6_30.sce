// Example 6.30;//bandwidth
clc;
clear;
close;
BW=10;//bandwidth without feedback in killo hertz
A= 100;// open loop voltage gain
Beta=0.1;// feedback ratio
Afb= (A/(1+(Beta*A)));//GAIN WITH FEEDBACk
Bwf=round(BW*(1+Beta*A));//bandwidth with feedback in killo hertz
disp(Afb,"feedback gain")
disp(Bwf,"bandwidth with feedback in killo hertz")

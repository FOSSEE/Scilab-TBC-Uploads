//Example 11.6: Current
clc;
clear;
close;
//given data :
format('v',8)
ix=200;//amperes
r=0.02;//in ohms
x=poly(0,"x");
p=-19+12*x+0*x^2;//
y=roots(p);//km
ipx=ix*(3-y);//in amperes
inx=2*ix;//in amperes
it=ipx+inx;//in amperes
disp(it,"current through negetive booster in amperes is")

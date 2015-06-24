//Example 8.6.10 // Q
clc;
clear;
close;
//given data 
format('v',5)
rsh=0.02;//:
r=10;// in ohm
f=1;//in MHz
c=65;//in pico-farad
L=(1/((2*%pi*f*10^6)^2*c*10^-12))*10^3;
qact=((1/(2*%pi*f*10^6*c*10^-12*r)));//actual q factor
qm=(1/(2*%pi*c*10^-12*f*10^6*(r+rsh)));//measured q factor
per=((qact-qm)/qact)*100;//percentage error 
disp(per,"percentage error is")

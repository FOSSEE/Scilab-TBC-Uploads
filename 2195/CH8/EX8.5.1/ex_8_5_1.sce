//Example 8.5.1:percentage errpr
clc;
clear;
close;
format('v',4)
r=10;//in ohms
f=1;//in  MHz
c=65;//capacitance in pF
rsh=0.02;//in ohms
qact=((1/(2*%pi*f*10^6*c*10^-12*r)));//actual q factor
qm=(1/(2*%pi*c*10^-12*f*10^6*(r+rsh)));//measured q factor
per=((qact-qm)/qact)*100;//percentage error 
disp(per,"percentage error is")

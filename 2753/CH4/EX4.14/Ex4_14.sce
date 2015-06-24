//Example 4.14: 
clc;
clear;
close;
//given data :
A=100;//gain without feedback
Beta=1/25;//feed back ratio
Af=(A/(1+(Beta*A)));//gain with feedback
disp(Af,"(i) gain with feedback is ,=")
ff=Beta*A;//feedback factor
disp(ff,"feedback factor is,=")
vi=50;//mV
Vo=Af*vi*10^-3;//in V
disp(Vo,"output voltage is ,(V)=")
fv=Beta*Vo;//in V
format('v',5)
disp(fv,"feedback voltage is ,(V)=")
vin=vi*(1+Beta*A);//mV
disp(vin,"new increased input voltage is ,(mV)=")

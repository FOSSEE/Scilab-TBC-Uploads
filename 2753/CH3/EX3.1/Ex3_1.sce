//Example 3.1: 
clc;
clear;
close;
//given data :
Beta=50;//amlification factor
dbb=1;//percentage variation in degree celsius
daa=dbb/50;//variation in degree celsius
format('v',5)
disp(daa,"(i) variation in alpha for a silicon BJT is ,(%/degree-Celsius)=")
temp=325;//in K
t=25;//degree celsius
Beta1=dbb*t;//in %
nBeta=Beta+(Beta1/100)*t;//
format('v',6)
disp(nBeta,"new value of Beta is ,=")

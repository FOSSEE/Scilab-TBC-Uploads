//Example 12.3;no. of subscribers
clc;
clear;
close;
pt=1;//mW
pn=-40;//dBm
pn1=10^(pn/10);//
c=0.05;//
d=0.11;//
x=((pn1)/(pt*c));//
y=((log10(x))/(log10((1-d)*(1-c))));//
n=y+1;//
disp(round(n),"no. of subscribers are")

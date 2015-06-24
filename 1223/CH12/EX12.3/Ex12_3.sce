clear;
clc;
//Example 12.3
Ao=10^4;
wh=2*%pi*100;//rad/s
Af=50;
//x=(1+bAo)
x=Ao/Af;
printf('\n(1+bAo)=%f\n',x)
wfh=wh*x;
printf('\nclosed loop bandwidth=%f\n',wfh)

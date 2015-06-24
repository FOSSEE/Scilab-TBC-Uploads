//Example 4.21: 
clc;
clear;
close;
//given data :
format('v',5)
Af=100;//gain with feeback
vi=50;//in mV
vi1=60;//in mV
AAf=vi1/vi;//
A=AAf*Af;//
Beta=(((A/Af)-1)/A);//feed back ratio
disp(A,"Av is ,=")
format('v',8)
disp(Beta," feedback factor is,=")


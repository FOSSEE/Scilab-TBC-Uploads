//Example 2.4://true power
clc;
clear;
close;
ph=45;//degree
th=90;//radians
del=-45;//radians
f=50;//Hz
l=15;//mH
r=300;//ohms
b=atan((2*%pi*f*l*10^-3)/r);//in radians
k=((cosd(ph))/(cos(b)*cosd(42)));//
nr=20;//nomianl ratio
e=-0.3;//
er=(e*nr)/100;//
ar1=nr-er;//actual ratio
nr1=100;//nomianl ratio
e1=0.9;//
er1=(e1*nr1)/100;//
ar2=nr1-er1;//actual ratio
p=450;//watts
tp=ar1*ar2*k*p;//
disp(tp*10^-3,"true power in kW is")
//answer is wrong in the textbook

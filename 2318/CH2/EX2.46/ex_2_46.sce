//Example 2.46: inductance and capacitance
clc;
clear;
close;
//given data :
c1=1.5;//micro-farad
f=50;//Hz
f1=55;//Hz
f2=45;//Hz
l1=((1/((2*%pi*f)^2)*c1*10^-6));//H
v1=1.211*0.428;//V
i1=v1/1;//mA
v2=1.211*.441;//V
i2=v2/0.95;//mA
v=0.527;//V
pec=((i1-v)/v)*100;//
pec1=((i2-v)/v)*100;//
disp(-pec,"percentage change (decrease) in coil-1 current is,(%)=")
disp(-pec1,"percentage change (decrease) in coil-2 current is,(%)=")
x1=((1/(2*%pi*f2)^2));//
x2=((314*x1)-(0.318*10^-2))/370;//
disp(x2*10^6,"capacitance is,(micro-F)=")
l2=x1/(x2);//
disp(l2,"inductance is ,(H)=")

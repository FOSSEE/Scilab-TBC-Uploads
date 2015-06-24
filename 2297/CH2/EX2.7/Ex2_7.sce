// Example 2.7 :Norton's Equivalent
clc;
close;
clear;
// given :
vs1=40;//volts
vs2=20;//volts
r1=2;//resistance in ohms
r2=6;//resistance in ohms
r3=2;//resistance in ohms
r4=2;//resistance in ohms
iab=((r1*vs1)/(r2+(r1/2))*((r1+(r3/2))/(r1+r3)));//current in amperes
iab1=-vs2/r1;//current amperes
it=iab+iab1;//current amperes
req1=r1+((r1*r2)/(r1+r2));//equivalent resistance in ohms
req=(req1*r3)/(req1+r3);//equivalent resistance in ohms
disp(it,"current is,(A)")
disp(req,"equivalent resistance is,(ohm)=")


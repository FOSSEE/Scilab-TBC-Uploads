//Example 3.58: resistance 
clc;
clear;
close;
l1=26;//cm
l2=24;//cm
l1d=25.8;//cm
l2d=23.5;//cm
s=545;//ohm
sg=65;//ohm
sd=((s*sg)/(s+sg));//ohm
X=((sd*(l1-l2))-s*(l1d-l2d))/(l1-l2-l1d+l2d);//
disp(X,"X is ,=")

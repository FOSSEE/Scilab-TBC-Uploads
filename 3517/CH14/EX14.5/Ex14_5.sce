//Caption:Determine meter indication when time base uses (a)6 decade counter (b)4 decade counter
//Ex14.5
clc;
clear;
close;
f=3500//Applied frequency(in hz)
F=10^6//Clock generator frequency(in hz)
f1=F/(10^6)
t1=1/f1
c1=f*t1
disp(c1,'Cycles of input counted during t1=')
f2=F/(10^4)
t2=1/f2
c2=f*t2
disp(c2,'Cycles of input counted during t2=')
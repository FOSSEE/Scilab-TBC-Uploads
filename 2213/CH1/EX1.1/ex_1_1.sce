//Example 1.1 power drawn
clc;
clear;
close;
format('v',6)
r1=100;//in ohms
r2=r1;// in ohms
V=250;// ac supply in volts
rp=((1)/((1/r1)+(1/r2)));// equivalent resistance in ohms
pp=((V^2)/rp);//power drawn in watts
disp("part (a) ")
disp(pp,"power drawn when elements are in parallel,(W)=")
rs=r1+r2;// equivalent resistance in ohms
ps=((V^2)/rs);//power drawn in watts
disp("part (b) ")
disp(ps,"power drawn when elements are in series ,(W)=")

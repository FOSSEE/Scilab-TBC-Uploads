//Example 15.1 : colume ratio of aluminium and boron
clc;
clear;
close;
format('v',6)
yal=715;// in GN/,^2
yfe=210;// in GN/,^2
yb=440;// in GN/,^2
A=[71 71;71 440];//
B=[71;210];//
X=A\B;//
disp(X(1,1),"volume ratio of aluminium is")
disp(X(2,1),"volume ratio of boron is")

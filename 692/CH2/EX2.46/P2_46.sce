//EXAMPLE 2.46, Cross corelation Computation.
// Given two finite length sequence.x[n],y[n]:
clear;
clc;
x=[1 3 -2 1 2 -1 4 4 2];
disp(x,'x');
y=[2 -1 4 1 -2 3];
disp(y,'y');
//Cross corelation rxy[n]:

rxy=convol(x,mtlb_fliplr(y));
disp(rxy,'The Cross-Corelation Operation of the Inputs is =')

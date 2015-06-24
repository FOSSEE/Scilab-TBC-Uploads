//Example 20.1
//Deep Drawing
//Page No. 672
clc;clear;close;

le=0.3;              //factor (no unit)
wd=-0.16;              //factor (no unit)
l_l0=1+le;
w_w0=1+wd;
R=log(1/w_w0)/log((w_w0)*l_l0);
printf('\nLimiting ratio = %g',R);

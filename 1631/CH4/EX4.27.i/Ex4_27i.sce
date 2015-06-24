//Caption:Normalized power 
//Example 4.27.i
//page no 200
//Find  Normalized power for quantization noise
clear;
clc;
fm=3*10^3;
v=8;
VH=5;
VL=-5;
q=2^v;
del=(VH-VL)/q;
Nq=del^2/12;//quantization noise
disp("W",Nq,"Normalized power for quantization noise")


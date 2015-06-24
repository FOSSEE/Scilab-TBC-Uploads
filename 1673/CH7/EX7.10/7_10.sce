//ill condiioned linear systems
//example 7.10
//page 277
clc;clear;close;
A=[1/2 1/3 1/4;1/5 1/6 1/7;1/8 1/9 1/10]//hilbert's matrix
de_A=det(A);
if de_A<1 then
    printf(' A is ill-conditioned')
end
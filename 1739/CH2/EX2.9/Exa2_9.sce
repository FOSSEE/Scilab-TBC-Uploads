//Exa 2.9
clc;
clear;
close;
//Given data :
NA=0.16;//Unitless
d=30;//in um
a=d/2;//in um
n1=1.50;//Unitless
lambda=0.9;//in um
v=2*%pi*a*NA/lambda;//V number
N=v^2/2;//No. of modes propagate
disp(ceil(N),"Number of guided modes in the fibre : ");
// Example 8.2;//lateral power distribution coefficient
clc;
clear;
close;
th=5;//power beam width angle in degree
ph=0;//lateral angle in degree
L=round((log10(1/2))/(log10(cosd(th))));
disp(L,"lateral power distribution coefficient")

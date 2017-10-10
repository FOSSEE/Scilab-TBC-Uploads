//Example 3// Ch 4
clc;
clear;
close;
// given data
a=4*1e4;
b=15*1e5;
lb=0;
ub=0.0005;
i=integrate('(a-b*sqrt(x))','x',lb,ub)
as=exp(i);//Avalanche size
printf('Avalache size %f',as)

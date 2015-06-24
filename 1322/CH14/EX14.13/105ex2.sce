
//6*x^2+17*x-3
clear;
clc;
close;
x=poly(0,'x');
p=6*x^2+17*x-3;
factors(p); 
ans(2)=ans(2)*6;//multiply by 6 the p1 factors to get the original factors of p
disp(ans(1),ans(2),"the factors of 6*x^2+17*x-3 are")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

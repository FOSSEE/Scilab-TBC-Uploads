// Example 7.14 Apply the geometric mean to find general index from the following
clc;
clear;
I=[118 120 97 107 111 93];
W=[4 1 2 6 5 2];
IN=sum(log(I).*W)/sum(W);
GI=exp(IN)
disp(GI,"General Index",IN,"Log General Index number =")

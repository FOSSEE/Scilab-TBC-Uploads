//to find confidence interval for given confidence levels

clc;
cl=[.5 .9 .95 .99];
s=.22;
d=[.7 1.83 2.26 3.25];
function [a]=ci(b)
    a=s*b;
endfunction

CI(1)=ci(d(1));
CI(2)=ci(d(2));
CI(3)=ci(d(3));
CI(4)=ci(d(4));

disp(CI,'confidence interval');
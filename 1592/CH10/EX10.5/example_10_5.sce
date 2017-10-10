//Scilab Code for Example 10.5 of Signals and systems by
//P.Ramakrishna Rao
//Auto Correlation
clear;
clc;
function [y]=u(t)
    if t&gt;=0
    y=1
else y=0
    end
endfunction
k=1;
a=0.8;
for n=-30:30;
    x(k)=a^(-n)*u(-n);
    k=k+1;
end
length(x)
//computation of auto correlation sequence;
r = xcorr(x);
n=-60:60;
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d3(n,r,-4);
title('rxx_auto-correlation');
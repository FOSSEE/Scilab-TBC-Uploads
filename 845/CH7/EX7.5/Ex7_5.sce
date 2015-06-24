//Example 7.5

clc
clear

function [f] = y(x)
    f = -1/x;
endfunction

H = [0.0128 0.0064 0.0032];
n = length(H);
x = 0.05;
h = H(1);
Fh = (y(x+h) - y(x-h)) / (2*h);
Fh2 = (y(x+h/2) - y(x-h/2)) / (h);
Fh4 = (y(x+h/4) - y(x-h/4)) / (h/2);

F1h2 = (4*Fh2 - Fh) / (4-1);
F1h4 = (4*Fh4 - Fh2) / (4-1);
F2h4 = (4^2*F1h4 - F1h2) / (4^2-1);
del = %nan*ones(n,3);
del(:,1) = [Fh Fh2 Fh4]';
del(1:2,2) = [F1h2 F1h4]';
del(1,3) = F2h4;

disp(del(1,n),"y''(0.05) = ")
Exact = 1/x^2;
disp(Exact,"Exact Value:")

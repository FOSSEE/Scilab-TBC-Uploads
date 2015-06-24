clc;
clear;
function z=f(x,y)
    z=2*x*y + 2*x - x^2 - 2*y^2
endfunction
x=-1;
y=1;
dfx=2*y+2-2*x;
dfy=2*x-4*y;
//the function can thus be expressed along h axis as
//f((x+dfx*h),(y+dfy*h))
disp("180*h^2 + 72*h - 7","The final equation is=")
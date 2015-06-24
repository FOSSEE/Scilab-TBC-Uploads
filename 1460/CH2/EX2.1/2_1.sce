clc
//initialization of variables
k=20 //lb/in
x=3 //in
//calculations
function [y]=fun(x)
    y=k*x
endfunction
w=intg(0,3,fun)
//results
printf("Work done = %d in-lb",w)

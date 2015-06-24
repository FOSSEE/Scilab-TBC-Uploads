//Example 2.1
//solving differential equation in scilab
clear;clc;
xdel(winsid());

function ydot=f(t, y)
ydot=(10/4)-(3*y/4)
endfunction
y0=1;
t0=0;
t=0:5:10;
y=ode(y0,t0,t,f)
//since"t=0;5;10"
//the answer is calculated for t=0:5:10"
//thus the value of "y"can be calculated at any value of "t".


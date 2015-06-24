//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.13w
//calculation of maximum and minimum value of a given function

//given data
function y=f(x)
    y=x+(1/x);
endfunction

//calculation
//dy/dx=1-(1/x^2)=0 for maximum or minimum
//x=1 or -1
//at x=0 y=infinite is maximum value
//minimum value of y at x=1
ymin=f(1);

disp(ymin,'maximum value of given function is infinite and minimum value is ')


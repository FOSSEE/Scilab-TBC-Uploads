//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.14w
//calculation of the area under curve

//given data
function y=f(x)
    y=x*x;
endfunction

//calculation
A=integrate('f','x',0,6)

disp(A,'the area under curve is')

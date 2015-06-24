clear
clc

//Example 19.2
disp('Example 19.2')

function y=f_DNO3(r1)
    D1=0.5;D2=0.5;
    r2=0.4-0.5*r1;
    y=r1*D1/(1+r1)^2/(1+r2)+r2*D2/(1+r1)/(1+r2)^2
endfunction

function [f, g, ind] = costf(x, ind)
    f=-f_DNO3(x);//cost is negative of function to be maximised
    g=-derivative(f_DNO3,x);//derivative of the cost function
endfunction

[fopt, xopt] = optim(costf,0.5);

disp(xopt,"Optimum value of r1=")
disp(-fopt,"Max value of DNO3=")

mprintf('Note that the answer in book is not as accurate as the one\n...
calculated from scilab')





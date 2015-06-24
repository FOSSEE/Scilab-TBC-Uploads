//Example 2.5
clc
clear

function f = fun5(x)
    f = exp(-x)/10;
endfunction

clc
tol = 1e-4;
maxit = 4;
xold = 0;
iter = 1;
while(1)
    xnew = fun5(xold);
    EA = abs(xnew - xold);
    if EA < tol | iter > maxit then
        break
    end
    xold = xnew;
    iter = iter + 1;
end
root = round(xnew*10^4) / 10^4;     //rounded to 4 decimal places
disp(root,"root = ")

//Example 2.6
clc
clear

function f = fun6(x)
    f = 1./ sqrt(x+1);
endfunction

tol = 1e-4;
maxit = 6;
xold = 1;
iter = 1;
while(1)
    xnew = fun6(xold);
    EA = abs(xnew - xold);
    if EA < tol | iter > maxit then
        break
    end
    xold = xnew;
    iter = iter + 1;
end
root = round(xnew*10^4) / 10^4;     //rounded to 4 decimal places
disp(root,"root = ")

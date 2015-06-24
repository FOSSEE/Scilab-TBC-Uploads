//Example 2.8
clc
clear

function [f,df] = fun8(x)
    f  = x.^3 - x - 1;
    df = 3*x.^2 - 1;
endfunction

xold = 1;
maxit = 5;
iter = 1;

while (1)
    [fx,dfx] = fun8(xold);
    xnew = xold - fx/dfx;
    if iter == maxit then
        break
    end
    xold = xnew;
    iter = iter + 1;
end
root = round(xnew*10^4) / 10^4;
disp(root,"root = ")

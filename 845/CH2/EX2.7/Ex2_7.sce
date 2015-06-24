//Example 2.7
clc
clear

function [f,df] = fun7(x)
    f  = x.*exp(x) - 2;
    df = x.*exp(x) + exp(x);
endfunction

xold = 1;
maxit = 2;
iter = 1;

while (1)
    [fx,dfx] = fun7(xold);
    xnew = xold - fx/dfx;
    if iter == maxit then
        break
    end
    xold = xnew;
    iter = iter + 1;
end
root = round(xnew*10^3) / 10^3;
disp(root,"root = ")

//Example 2.4
clc
clear

function [root] = FalsePosition(fun,x,tol,maxit)
// FalsePosition: Computes roots of the function in the given range using False Position Method
//// Input: FalsePosition(fun,x,tol,maxit)
// fun = function handle
// x = range in between sign change is evident
// tol = Maximum error between iterations that can be tolerated
// maxit = Maximum number of iterations
//// Output: [root]
// Root: Root of the given function in defined range

if fun(x(1)) > 0 then
    xu = x(1);    xl = x(2);
else
    xu = x(2);    xl = x(1);
end

Ea = 1;
iter = 1;

while(1)
    xr(iter) = xl(iter) - ((xu(iter)-xl(iter)) / (fun(xu(iter))-fun(xl(iter))) * fun(xl(iter)));
    if fun(xr(iter)) > 0 then
        xu(iter+1) = xr(iter);
        xl(iter+1) = xl(iter);
    elseif fun(xr(iter)) < 0 then
        xl(iter+1) = xr(iter);
        xu(iter+1) = xu(iter);
    else
        break
    end
    
    if iter>1 then
        Ea(iter) = 100 * abs((xr(iter) - xr(iter-1)) / xr(iter));
    end
   
    if Ea(iter) < tol | iter == maxit then
        break
    end
    iter = iter + 1;
end
root = xr(iter);
endfunction

function f = fun4(x)
    f = x.*log10(x) - 1.2;
endfunction

clc
x = [2 3];
tol = 1e-4;
maxit = 2;
root = FalsePosition(fun4,x,tol,maxit);
disp(round(root*10^4)/10^4,"root = ")

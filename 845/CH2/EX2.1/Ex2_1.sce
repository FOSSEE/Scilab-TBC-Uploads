//Example 2.1
clc
clear

function [root] = Bisection(fun,x,tol,maxit)
// Bisection: Computes roots of the function in the given range using Bisection Method
//// Input: Bisection(fun,x,tol,maxit)
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
    xr(iter) = (xl(iter) + xu(iter)) / 2;
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

function f = fun1(x)
    f = x.^3 -9*x + 1;
endfunction

x = [2 4];
tol = 1e-4;
maxit = 5;
root = Bisection(fun1,x,tol,maxit);
disp(root,"root = ")

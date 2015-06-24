//Example 2.2
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

function f = fun1(x)
    f = x.^3 -9*x + 1;
endfunction

x = [2 4; 2 3];
tol = 1e-4;
maxit = 3;
for i = 1:2
    root = FalsePosition(fun1,x(i,:),tol,maxit);
    root = round(root*10^5)/10^5;
    disp(strcat(["root(",string(i),") = ",string(root)]))
end

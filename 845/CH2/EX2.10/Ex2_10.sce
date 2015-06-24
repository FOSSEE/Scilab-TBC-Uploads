//Example 2.10
clc
clear

N = 12;
xold = 3.5;
iter = 1;
maxit = 3;

while (1)
    xnew = (xold + N/xold) / 2;
    if iter == maxit then
        break
    end
    xold = xnew;
    iter = iter + 1;
end
root = round(xnew*10^4) / 10^4;
disp(root,"root = ")

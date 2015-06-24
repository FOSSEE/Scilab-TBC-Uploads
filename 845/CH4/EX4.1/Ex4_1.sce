//Example 4.1
clc
clear

A = [2 3 2; 4 3 5; 3 2 9];
v = [1; 1; 1];
iter = 1;
maxit = 5;

while(1)
    u(:,iter) = A * v(:,iter);
    q(iter) = max(u(:,iter));
    v(:,iter+1) = u(:,iter) / q(iter);
    if iter == maxit then
        break
    end
    iter = iter + 1;
end
X = round(v(:,iter)*10^2) / 10^2;
disp(X,"Eigen Vector:")

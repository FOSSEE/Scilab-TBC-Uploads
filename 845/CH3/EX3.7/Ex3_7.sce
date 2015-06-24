//Example 3.7
clc
clear

A = [1 -1/4 -1/4 0; -1/4 1 0 -1/4; -1/4 0 1 -1/4; 0 -1/4 -1/4 1];
B = [1/2; 1/2; 1/4; 1/4];

n = length (B);
tol = 1e-4;
iter = 1;
maxit = 5;

x = zeros(n,1);            //Intial guess
E = ones(n,1);            //Assuming to avoid variable size error
S = diag(diag(A));
T = S-A;
xold = x;

while (1)
    for i = 1:n
        x(i,iter+1) = (B(i) + T(i,:) * xold) / A(i,i);
        E(i,iter+1) = (x(i,iter+1)-xold(i))/x(i,iter+1)*100;
        xold(i) = x(i,iter+1);
    end
    
    if x(:,iter) == 0
        E = 1;
    else
        E = sqrt((sum((E(:,iter+1)).^2))/n);
    end
    
    if E <= tol | iter == maxit
        break
    end
    iter = iter + 1;
end
X = x(:,iter);
x = round(x*10^5)/10^5;
x(:,1) = [];
mprintf('%s %3s %11s %10s %10s','Iter No.','x1','x2','x3','x4');
disp([(1:iter)' x']);

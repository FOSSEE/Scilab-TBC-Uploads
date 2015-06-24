//Example 3.6
clc
clear

A = [83 11 -4; 7 52 13; 3 8 29];
B = [95; 104; 71];

n = length (B);
tol = 1e-4;
iter = 1;
maxit = 5;

x = zeros(n,1);            //Intial guess
E = ones(n,1);            //Assuming to avoid variable size error
S = diag(diag(A));


while (1)
    x(:,iter+1) = S\(B + (S-A)*(x(:,iter)));
    E(:,iter+1) = (x(:,iter+1)-x(:,iter))./x(:,iter+1)*100;
    if x(:,iter) == 0
        Error = 1;
    else
        Error = sqrt((sum((E(:,iter+1)).^2))/n);
    end
    
    if Error <= tol | iter == maxit
        break
    end
    iter = iter+1;
end
xact = x(:,iter);
x = round(x*10^4)/10^4;
x(:,1) = [];
mprintf('%s %3s %9s %9s','Iter No.','x','y','z');
disp([(1:iter)' x']);

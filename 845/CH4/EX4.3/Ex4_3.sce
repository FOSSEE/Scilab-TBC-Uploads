//Example 4.3
clc
clear

A = [2 -1 0; -1 2 -1; 0 -1 2];
[n,n] = size(A);
iter = 1;
maxit = 3;
//Note: Diagonal form may be achieved at iter = 9. Modify maxit to greater than 9 for exact result.

D = A;
S = 1;

while(1)
    D_offdiag = D - diag(diag(D));
    [mx,index1] = max(abs(D_offdiag));
    i = index1(1);
    j = index1(2);
    if (D(i,i)-D(j,j)) == 0 then
        theta = %pi/4;
    else
        theta = atan(2*D(i,j)/(D(i,i)-D(j,j))) / 2;
    end
    S1 = eye(n,n);
    S1(i,i) = cos(theta);
    S1(i,j) = -sin(theta);
    S1(j,i) = sin(theta);
    S1(j,j) = cos(theta);

    D1 = inv(S1) * D * S1;
    for j = 1:n
        for i = 1:n
            if abs(D1(i,j)) < 1D-10 then
                D1(i,j) = 0;
            end
        end
    end
    S = S * S1;

    if D1 - diag(diag(D1)) == zeros(n,n) | iter == maxit then
        eigval = diag(D1);
        eigval = round(eigval*10^3)/10^3;
        disp('Eigen Values:')
        disp(eigval)
        break
    end

    iter = iter + 1;
    D = D1;
end

//Solving the problem using Choleski decomposition 
//Decomposition of a matrix "A" to L and L'

clear;
close();
clc;
format('v',7)
A = [4,2,-2;2,10,2;-2,2,3];
n = 3;
for i = 1:n
    for j = 1:i
        s=0;
        if i==j
            for k = 1:j-1
                s=s+L(j,k)*L(j,k);
            end
            L(j,j)= sqrt(A(j,j)-s);
        else
            for k = 1:j-1
                s=s+L(i,k)*L(j,k);
            end
            L(i,j)= (A(i,j)-s)/L(j,j);
        end       
    end
end
U = L';
disp(L,'Lower triangular matrix is :')
disp(U,'Upper triangular matrix is :')

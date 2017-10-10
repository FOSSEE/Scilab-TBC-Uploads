//Eg-3.8
//pg-87

clear
clc

//checking whether cholesky decomposition can be performed on a matrix

A=[1 0.5 0;.5 1 0.5;0 .5 1];
if A==A' then
    printf('The matrix A is symmetric and we have to check whether it is positive definite or not.\n')
end

for k=1:3
    s(k)=det(A(1:k,1:k));
end


j=min(s);

if j>0 then
    printf('\n Given matrix is positive definite and hence cholesky decomposition can be performed\n')
end
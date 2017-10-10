//Eg-3.10
//pg-92

clear
clc

 //cholesky decomposition
 
 A=[2 1 0;1 2 1;0 1 2];
 B=[3.6;6.7;-1.9];
 
 if A==A' then
    disp("A is symmetric and we have to check whether it is positive definite or not")
end

for k=1:3
    s(k)=det(A(1:k,1:k));
end


j=min(s);

if j>0 then
    disp("given matrix is positive definite and hence cholesky decomposition can be performed")

[n,n]=size(A);
summ1=0;
summ2=0;

for i=1:n
    summ1=0;
    for k=1:i-1
    summ1=summ1+(L(i,k))^2;
    end
    L(i,i)=(A(i,i)-summ1)^(1/2);
    for j=i+1:n
    summ2=0;
    for k=1:i-1
    summ2=summ2+L(i,k)*L(j,k);    
    end
    L(j,i)=(A(i,j)-summ2)/(L(i,i));
    end
end

if L*L'==A then
    disp("verification was done")
end

Y=inv(L)*B;

X=inv(L')*Y;

disp(X)
end
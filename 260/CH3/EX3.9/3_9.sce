//Eg-3.9
//pg-88

clear
clc

 //cholesky decomposition
 
 A=[1 .5 0;.5 1 .5;0 .5 1];
 B=[1;2;3];
 

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




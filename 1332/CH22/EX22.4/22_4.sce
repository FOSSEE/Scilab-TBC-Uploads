//Example 22.4
//Hopfield Neural Network
//Page no. 766
clc;clear;close;

A=[1,2,1;-1,1,1;1,0,-1];
disp(inv(A),'Inverse of A =',A,'A =')
for i=1:3
    for j=1:3
        k=0;
        for l=1:3
            k=k+A(i,l)*A(j,l)
        end
        T(i,j)=k;
    end
end
disp(T,'T =')
//Example 6.9
//Complex System of Linear Equation
//Page no. 244
clc;clear;close;

for i=1:7
    s=0;
    for j=1:7
        A(i,j)=j^i
        s=s+(-1)^(j+1)*A(i,j)
    end
    B(i,1)=s;
end
X=inv(A)*B
disp(X,'The Solution = ')

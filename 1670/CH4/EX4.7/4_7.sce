//Example 4.7
//Jacobi Method
//Page no. 99
clc;close;clear;

A=[2,3,1;3,2,2;1,2,1];
n=3;
for k=1:10
    max1=0
for i=1:n
    for j=1:n
        if A(i,j)>max1 & i~=j then
            max1=A(i,j)
            i1=i;j1=j;
        end
    end
end
fi=(atan((2*A(i1,j1))/(A(i1,i1)-A(j1,j1)+10^-20)))/2
disp(fi,'fi = ')
O1=eye(n,n)
O1(i1,j1)=-sin(fi)
O1(j1,i1)=sin(fi)
O1(i1,i1)=cos(fi)
O1(j1,j1)=cos(fi)
disp(O1,'O1 = ')
A=inv(O1)*A*O1
disp(A,'A1 = ')
end
printf('\n\n The eigenvalues are : \n\n')
for i=1:n
    printf('\tl%i = %g\t',i,A(i,i))
end
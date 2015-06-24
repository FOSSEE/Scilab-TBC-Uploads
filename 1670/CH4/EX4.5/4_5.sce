//Example 4.5
//Jacobi Method
//Page no. 95
clc;close;clear;

A=[10,7,8,7;7,5,6,5;8,6,10,9;7,5,9,10];
n=4;
for k=1:14
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
printf('\n\n')
l=poly(0,'lb')
A=A-l*eye(n,n)
disp(det(A),'Characteristic Equation = ')
printf("\n\n\n\n\nNote : Computation Errors in some parts in calculation performed in book")
//Example 4.15
//Strum Sequence
//Page no. 116
clc;clear;close;

A=[1,2,2;2,1,2;2,2,1]
disp(A,'A=')
k=0;
for j=2:3
    k=k+A(j,1)^2;
end
a=A(2,1)*abs(1/A(2,1))*sqrt(k);
U=[0;a+A(2,1);A(3,1)];
U1=U'*U;
U2=U*U';
P=eye(3,3)-(2*U2)/U1;
B=P*A*P;
disp(B,'Reduced Matrix = ');
lb=poly(0,"lb")
f0l=1;                                //strum sequence
f1l=(B(1,1)-lb)*f0l;
f2l=(B(2,2)-lb)*f1l-B(1,2)^2*f0l
f3l=(B(3,3)-lb)*f2l-B(2,3)^2*f1l
disp(f3l,"f3(lambda) = ")
disp(roots(f3l),"Therefore the eigenvalues are : ")
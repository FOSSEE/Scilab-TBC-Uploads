//Example 4.14
//House Holder Transformation
//Page no. 114
clc;clear;close;

A=[1,3,4;3,1,2;4,2,1]
disp(A,'A=')
k=0;
for j=2:3
    k=k+A(j,1)^2;
end
a=A(2,1)*abs(1/A(2,1))*sqrt(k);
disp(a,'alpha=')
U=[0;a+A(2,1);A(3,1)];
disp(U,'U=')
U1=U'*U;
disp(U1,'UT*U=')
U2=U*U';
disp(U2,'U*UT=')
P=eye(3,3)-(2*U2)/U1;
disp(P,'P=');
B=P*A*P;
disp(B,'B=');
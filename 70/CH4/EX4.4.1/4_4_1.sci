//282
clear;
close;
clc;
A=[1 1 1;0 1 1;0 0 1];
disp(A,'A=')
n=size(A,1); d=1:n-1;
B=zeros(n); AA=[A,A;A,A]';
for j=1:n
   for k=1:n
       B(j,k)=det(AA(j+d,k+d));
   end
end
disp(B,'Adjoint of A:');
disp(B/det(A),'inv(A):');
//end
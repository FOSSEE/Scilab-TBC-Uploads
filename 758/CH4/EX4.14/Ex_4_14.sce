//Example 4.14

clc;clear;close;
z=poly(0,'z');
x1=[2 1 0 0.5];n1=0:length(x1)-1;
X1=x1*(z^-n1)';
x2=[2 2 1 1];n2=0:length(x2)-1;
X2=x2*(z^-n2)';
X3=X1*X2;
l=coeff(numer(X3));
x3=l(:,$:-1:1);
disp(X1,'x1(n)={2,1,0,0.5} X1(z)=');
disp(X2,'x2(n)={2,2,1,1} X2(z)=');
disp(X3,'Z transform of convolution of the two signals X3(z)=');
disp(x3,'Convolution result of the two signals= ')

//Example 4.16

clc;clear;close;
z=poly(0,'z');
x1=[1 2 3 4];n1=0:length(x1)-1;
X1=x1*(z^-n1)';
x2=[4 3 2 1];n2=0:length(x2)-1;
X2=x2*(z^-n2)';
X2_=x2*(z^n2)';
X3=X1*X2_;
l=coeff(numer(X3));
x3=l(:,$:-1:1);
disp(X1,'x1(n)={4,-2,1} X1(z)=');
disp(X2,'x2(n)={4,-2,1} X2(z)=');
disp(X3,'Z transform of cross crrelation of the two signals X3(z)=');
disp(x3,'Cross correlation result of the two signals= ')

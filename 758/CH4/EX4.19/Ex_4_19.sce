//Example 4.19

clc;clear;close;
z=poly(0,'z');
h=[1 2 3];n1=0:length(h)-1;
H=h*(z^-n1)';
y=[1 1 2 -1 3];n2=0:length(y)-1;
Y=y*(z^-n2)';
X=Y/H;
l=coeff(numer(X));
x=l(:,$:-1:1);
disp(H,'h(n)={1,2,3} H(z)=');
disp(Y,'y(n)={1,1,2,-1,3} Y(z)=');
disp(X,'Z transform of input sequence X(z)=');
disp(x,'Inpput Sequence = ')

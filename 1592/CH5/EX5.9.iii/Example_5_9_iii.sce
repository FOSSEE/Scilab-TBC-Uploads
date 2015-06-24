//Scilab Code for Example 5.9(iii) of Signals and systems by
//P.Ramakrishna Rao
clc;
clear;
q=0;
a1=0.5
a2=-0.5;
n=1:101;
x1=a1^n;
x2=a2^n;
w=2;
n=0:100;
z=(exp(-%i*w*n));
for n=0:33;
    X(n+1)=z(n+1)*x1(n+1)*cos(0.4*%pi*n);
    q=X(n+1)+q;
end
disp(q,'Y3(e^2j) at a=0.5');
for n=0:33;
    X(n+1)=z(n+1)*x2(n+1)*cos(0.4*%pi*n);
    q=X(n+1)+q;
end
disp(q,'Y3(e^2j) at a=-0.5');

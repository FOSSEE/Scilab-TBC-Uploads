//Scilab Code for Example 5.9(i) of Signals and systems by
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
    X(n+1)=z(n+1)*x1(3*n+1);
    q=X(n+1)+q;
end
disp(q,'Y1(e^2j) at a=0.5');
for n=0:33;
    X(n+1)=z(n+1)*x2(3*n+1);
    q=X(n+1)+q;
end
disp(q,'Y1(e^2j) at a=-0.5');

//Scilab Code for Example 5.16 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear;
q=0;
x=[1,2,3,4];
w=0;
n=0:3;
z=(exp(-%i*w*n));
for n=0:3
    X(n+1)=z(n+1)*x(n+1);
    q=X(n+1)+q;
end
disp(q,'X(0)->zeroth DFT coefficient');
q=0;
w=%pi/2;
n=0:3;
z=(exp(-%i*w*n));
for n=0:3
    X(n+1)=z(n+1)*x(n+1);
    q=X(n+1)+q;
end
disp(q,'X(1)->first DFT coefficient');
q=0;
w=%pi;
n=0:3;
z=(exp(-%i*w*n));
for n=0:3
    X(n+1)=z(n+1)*x(n+1);
    q=X(n+1)+q;
end
disp(ceil(q),'X(2)->second DFT coefficient');
q=0;
w=3*%pi/2;
n=0:3;
z=(exp(-%i*w*n));
for n=0:3
    X(n+1)=z(n+1)*x(n+1);
    q=X(n+1)+q;
end
disp(q,'X(3)->third DFT coefficient');

//Scilab Code for Example 5.5 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
x=[1,2,3,2,1];
q=0;
for n=1:5
    q=x(n)+q;
end
disp(q,'(a) X(e^j*0)');
q=0;
for n=-2:2
    q=((-1)^n)*x(n+3)+q;
end
disp(q,'(c) X(e^j*pi)');
disp('(d) X(e^j*pi)=2*pi*x(0)');
disp(2*%pi*x(3));
q=0;
for n=-2:2
    q=(x(n+3))^2+q;
end
disp(q*2*%pi,'(e) |X(e^j*w)|^2');

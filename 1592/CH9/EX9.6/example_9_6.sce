//Scilab Code for Example 9.6 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear;
A=1;
n=1;
wo=2*%pi;
theta=%pi/2;
for t=-5:0.01:5;
    x(n)=A*cos(wo*t+theta);
    n=n+1;
end
t=-5:0.01:5;
plot(t,x);
title('x(t)');
n=1;
for T=-5:0.1:5;
    z(n)=(A^2/2)*cos(wo*T);
    n=n+1;
end
figure(1);
T=-5:0.1:5;
plot(T,z);
title('Rxx(T)');
xlabel('t in seconds')
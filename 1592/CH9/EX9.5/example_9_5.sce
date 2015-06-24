//Scilab Code for Example 9.5 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear;
clear z x y t T;
n=1;
for t=-10:0.01:10;
    x(n)=exp(-t)*u(t);
    n=n+1;
end
t=-10:0.01:10;
plot(t,x);
title('x(t)');
n=1;
for T=-10:0.1:0;
    z(n)=integrate('exp(-t)*exp(T-t)','t',0,1000);
    n=n+1;
end
n=1;
for T=0.1:0.1:10;
    z(n+101)=integrate('exp(-t)*exp(T-t)','t',T,1000);
    n=n+1;
end
figure(1);
T=-10:0.1:10;
plot(T,z);
title('Rxx(T)');
xlabel('t in seconds');

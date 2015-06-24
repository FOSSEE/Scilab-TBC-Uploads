//Scilab Code for Example 9.7 of Signals and systems by
//P.Ramakrishna Rao
clc;
clear;
clear z x y t T A;
A=4;
T0=2;
n=1;
for T=0:0.1:T0;
    if T<T0/2 then
        x(n)=A;
    else x(n)=0;
        end
    n=n+1;
end
T=0:0.1:T0;
plot2d2(T,x,6);
title('x(t))');
xlabel('t in seconds');
n=1;
for T=0:0.1:T0;
    z(n)=(1/T0)*integrate('A^2','t',T,T0/2);
    n=n+1;
end
T=0:0.1:T0;
figure(1);
plot(T,z);
title('Rxx(T)');
xlabel('T in seconds');

//Scilab Code for Example 11.6 of Signals and systems by
//P.Ramakrishna Rao
//Hilbert Transform
clc;
clear A T t x;
T=2;
A=1;
n=1;
for t=-10:0.01:10;
    if t>-T/2 & t<T/2 then
        x(n)=A;
        n=n+1;
    else x(n)=0;
        n=n+1;
    end
end
t=-10:0.01:10;
//Signal x(t)
plot(t,x);
title('Given Signal x(t)');
xlabel('time t-->');
//Computing Hilbert Transform
xr=hilbert(x);
xr_imag=imag(xr);
figure(1);
t=-10:0.01:10;
plot(t,xr_imag);
title('Hilbert transform and associated signal');
xlabel('time t-->');

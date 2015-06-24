//Example 2.3
clear
clc
clf
n=-20:1:20;
x=[zeros(1,19),1,1,2,3,4,0.5, zeros(1,16)];
subplot(3,1,1);
plot(n,x,".");
xtitle("x(n) vs n","n","x(n)");
subplot(3,1,2);
plot(n+3,x,'.');
xtitle("x(n-3) vs n","n","x(n-3)");
subplot(3,1,3);
plot(n-2,x,'.');
xtitle("x(n+2) vs n","n","x(n+2)");
figure(1)
subplot(3,1,1);
plot(-n,x,'.');
xtitle("x(-n) vs n","n","x(-n)");
subplot(3,1,2);
plot(-n+2,x,'.');
xtitle("x(-n+2) vs n","n","x(-n+2)");
subplot(3,1,3)
plot(-n-3,x,'.')
xtitle("x(-n-3) vs n","n","x(-n-3)");

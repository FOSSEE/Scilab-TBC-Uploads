//Example 4.5
//Convolution sum of x[n] and h[n]
clc
clear
n=0:2;
n1=0:4;
x=[0.5 0.5 0.5];
h=[3 2 1];
y=coeff(poly(h,'z','c')*poly(x,'z','c'))
disp("Convolution of x[n] and h[n] is...")
disp(y)
subplot(3,1,1)
xtitle("input signal x(n)","....................n","x[n]");
plot(n,x,'.');
subplot(3,1,2)
xtitle("system response h(n)","....................n","h[n]");
plot(n,h,'.');
subplot(3,1,3)
xtitle("output signal y(n)",".............................n","y[n]");
plot(n1,y,'.');

//Example 4.6
//Convolution sum of x[n] and h[n]
clc
clear
n=-1:1;
n1=-2:2;
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

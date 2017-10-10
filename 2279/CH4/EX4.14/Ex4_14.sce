//Example 4.14
//Convolution sum of x[n] and h[n]
clc
clear
n=0:100;
n1=0:200;
a=0.7//assume the constant a=0.7
for i=1:length(n)
    x(i)=a^n(i);
    h(i)=1;
end
y=convol(x,h);
subplot(3,1,1)
xtitle("input signal x(n)","....................n","x[n]");
plot(n,x,'.');
subplot(3,1,2)
xtitle("system response h(n)","....................n","h[n]");
plot(n,h,'.');
subplot(3,1,3)
xtitle("output signal y(n)",".............................n","y[n]");
plot(n1,y,'.');

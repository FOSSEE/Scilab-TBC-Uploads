//Example 4.15
//Convolution sum of x[n] and h[n]
clc
clear
n1=-100:1:0;
n2=0:100;
n3=-100:100;
a=0.5//assume the constant a=0.5
for i=1:length(n1)
    x(i)=a^-n1(i);
    h(i)=a^n1(i);
end
y=convol(x,h);
subplot(3,1,1)
xtitle("input signal x(n)","....................n","x[n]");
plot(n1,x,'.');
subplot(3,1,2)
xtitle("system response h(n)","....................n","h[n]");
plot(n2,h,'.');
subplot(3,1,3)
xtitle("output signal y(n)",".............................n","y[n]");
plot(n3,y,'.');

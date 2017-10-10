//Example 4.17
//Convolution sum of x[n] and h[n]
clc
clear
n1=2:12;
n2=4:14;
n3=6:26;
a=1/3//assume the constant a=1/3
for i=1:length(n1)
    x(i)=a^-n1(i);
    h(i)=1;
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

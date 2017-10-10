//Example 4.20
//Convolution sum of x[n] and h[n]
clc
clear
n1=0:5;
n2=0:7;
n3=0:12;
a=0.8//assume the constant a=0.8
for i=1:length(n1)
    x(i)=1;
end
for j=1:length(n2)
 h(j)=a^n2(j);
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

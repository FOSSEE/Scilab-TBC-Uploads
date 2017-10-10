//Example 4.24
//Convolution of x(t) and h(t)
clc
clear
t1=-3:0.01:10;
t2=1:0.01:10;
t3=-2:0.01:20;
a=0.5//assume a=0.5
for i=1:length(t1)
    x(i)=exp(-a*t1(i));
end
for j=1:length(t2)
 h(j)=exp(-a*t2(j));
end
y=convol(x,h);
subplot(3,1,1)
xtitle("input signal x(t)","....................t","x[t]");
plot(t1,x);
subplot(3,1,2)
xtitle("system response h(t)","....................t","h[t]");
plot(t2,h);
subplot(3,1,3)
xtitle("output signal y(t)",".............................t","y[t]");
plot(t3,y);

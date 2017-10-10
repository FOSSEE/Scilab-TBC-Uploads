//Example 4.21
//Convolution of x(t) and h(t)
clc
clear
t1=0:0.01:5;
t2=0:0.01:2;
t3=0:0.01:7;
for i=1:length(t1)
    x(i)=1;
end
for j=1:length(t2)
 h(j)=1;
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

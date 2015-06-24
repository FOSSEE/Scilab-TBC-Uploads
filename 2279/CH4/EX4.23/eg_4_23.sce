//Example 4.23
//Convolution of x(t) and h(t)
clc
clear
t1=0:0.01:20;
t2=0:0.01:20;
t3=0:0.01:40;
a1=0.5;//constants a and b are equal
b1=0.5;
a2=0.8;// constants a and b are unequal
b2=0.3;
for i=1:length(t1)
    x1(i)=exp(-a1*t1(i));
    x2(i)=exp(-a2*t1(i));
end
for j=1:length(t2)
     h1(j)=exp(-b1*t2(j));
    h2(j)=exp(-b2*t2(j));
end
//case 1: a & b are equal
y1=convol(x1,h1);
subplot(3,1,1)
xtitle("input signal x(t)","....................t","x[t]");
plot(t1,x1);
subplot(3,1,2)
xtitle("system response h(t)","....................t","h[t]");
plot(t2,h1);
subplot(3,1,3)
xtitle("output signal y(t)",".............................t","y[t]");
plot(t3,y1);
//case 2: a& b are unequal
figure(1)
y2=convol(x2,h2);
subplot(3,1,1)
xtitle("input signal x(t)","....................t","x[t]");
plot(t1,x2);
subplot(3,1,2)
xtitle("system response h(t)","....................t","h[t]");
plot(t2,h2);
subplot(3,1,3)
xtitle("output signal y(t)",".............................t","y[t]");
plot(t3,y2);

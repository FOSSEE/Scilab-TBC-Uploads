//shifting and scaling
//example 1.1
clear;
clc;
close;
t = 0:1/100:4;
for i = 1:length(t)
  x(i) = (3/4)*t(i) ;
end
for i = length(t)+1:2*length(t)
x(i) = 0;
end
figure
a=gca();
t1=0:1/100:8;
plot(t1,x(1:$-1))
xtitle('x(t)')
figure
a=gca();
t2=t1+2;
plot(t2,x(1:$-1))
xtitle('x(t-2)')
a.y_location='origin'
figure
a=gca();
t3=0:1/200:4;
plot(t3,x(1:$-1))
xtitle('x(2t)')
figure
a=gca();
t4=0:1/50:16;
plot(t4,x(1:$-1))
xtitle('x(t/2)')
figure
a=gca();
t5=-8:1/100:0;
plot(t5,x($:-1:2))
xtitle('x(-t)')
a.y_location = "right";
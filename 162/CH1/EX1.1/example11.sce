//Example1.1
clc;
t=0:0.01:9;
A=0:4/900:4;
for i=1:length(t)
    if t(i)<3 then
        x(i)=A(i)*t(i);
    else
        x(i)=0
    end
end
t1=t+3;
subplot(2,2,1)
plot(t1,x);
xtitle('x(t-3)');
subplot(2,2,2)
plot(4*t,x);
xtitle('x(t/4)');
subplot(2,2,3)
plot(t/3,x);
xtitle('x(3t)');
subplot(2,2,4)
t2=-9:0.01:0
plot(t2,x($:-1:1));
xtitle('x(-t)');
figure
plot(t,x);
xtitle('x(t)');
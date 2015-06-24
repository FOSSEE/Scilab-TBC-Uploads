//shifting and scaling
//Ex 1.6
clear;
clc;
close;
t = 0:1/100:2;
for i = 1:length(t)
    if t(i)<1 then
      x(i) = (2)*t(i) ;
        else
        x(i)= 2;
    end
end
for i = length(t)+1:2*length(t)
x(i) = 0;
end
t1=0:1/100:4.01;
figure
subplot(3,1,1),plot2d(t1,x)
a=gca();
t2=t1-1;
subplot(3,1,2),plot2d(t2,x)
xtitle('x(t+1)')
a.y_location='origin'
a=gca();
subplot(3,1,3),plot2d(t1/1.5,x)
xtitle('x(1.5t)')
figure
a=gca();
subplot(2,1,1),plot2d((t2/1.5),x)
xtitle('x(1.5t+1)')
a.y_location='origin'
a=gca();
t3=-3:1/100:1.01;
subplot(2,1,2),plot2d(t3,x($:-1:1))
xtitle('x(-t+1)')
a.y_location = 'origin';
//ex_5 even and odd signals of x(t)
clear ;
clear x;
clear t;
clc;
close;
t = 0:1/100:5;
for i = 1:length(t)
  x(i) = (4/5)*t(i) ;
end
for i = length(t)+1:2*length(t)
x(i) = 0;
end
figure
a=gca();
t1=0:1/100:10;
plot(t1,x(1:$-1))
xtitle('x(t)')
figure
a=gca();
t3=0:1/100:10;
plot(t3,x(1:$-1)/2)
xtitle('[x(t)+x(-t)]/2=even')
t2=-10:1/100:0;
plot(t2,x($:-1:2)/2)
a.y_location='origin'
figure
a=gca();
t4=0:1/100:10;
plot(t3,x(1:$-1)/2)
xtitle('[x(t)-x(-t)]/2=odd')
t5=-10:1/100:0;
plot(t5,-x($:-1:2)/2)
a.y_location='origin'
a.x_location='origin'
//Ex 2.39
clc;
clear;
A=1;
Dt=0.005;
T1=1;
t=-T1:Dt:T1;
for i=1:length(t)
xt(i)=A;
end
xt=xt';
t1=0:0.005:2;
for j=1:length(t1)
  x1(j)=sin(%pi*t1(j));
end  
subplot(3,1,1);
a=gca();
a.data_bounds=[-4,0;4,2];
a.y_location="origin";
plot(t,xt);
xlabel('t in sec.');
title('Continous Time Signal x(t)');
subplot(3,1,2);
a=gca();
plot(t1,x1);
y=convol(x1,xt);
subplot(3,1,3);
a.y_location="origin";
a.x_location="origin";
plot(y);

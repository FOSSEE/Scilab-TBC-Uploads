//Perform Convolution of x1(t)=1 for 1<t<10 & x2(t)=1 for 2<t<10
clc;
t=0:0.01:15;
x1=1.*(t>1&t<10);
x2=1.*(t>2&t<10);
y=convol(x1,x2);
n=length(y);//setting time vector for y
ty=0:1:(n-1);

subplot(131)
plot2d(t,x1);//first signal
xtitle('first signal x1(t)=1 for 1<t<10','time t','x1(t)');

subplot(132)
plot2d(t,x2);//second signal
xtitle('second signal x2(t)=1 for 2<t<10','time t','x2(t)');

subplot(133)
plot2d(ty,y);//output signal after convolution
xtitle('convolution of x1 & x2','time t','x1(t)*x2(t)');
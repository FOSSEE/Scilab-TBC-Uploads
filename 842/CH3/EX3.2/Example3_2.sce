//clear//
//Example 3.2:CTFS of a periodic signal x(t)
//Expression of continuous time signal
//using continuous time fourier series
clear;
close;
clc;
t = -3:0.01:3;
//t1 = -%pi*4:(%pi*4)/100:%pi*4;
//t2 =-%pi*6:(%pi*6)/100:%pi*6;
xot = ones(1,length(t));
x1t = (1/2)*cos(%pi*2*t);
xot_x1t = xot+x1t;
x2t = cos(%pi*4*t);
xot_x1t_x2t = xot+x1t+x2t;
x3t = (2/3)*cos(%pi*6*t);
xt = xot+x1t+x2t+x3t;
//
figure
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-4,0;2 4];
plot(t,xot)
ylabel('t')
title('xot =1')
//
figure
subplot(2,1,1)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-4,-3;2 4];
plot(t,x1t)
ylabel('t')
title('x1(t) =1/2*cos(2*pi*t)')
subplot(2,1,2)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-4,0;2 4];
plot(t,xot_x1t)
ylabel('t')
title('xo(t)+x1(t)')
//
figure
subplot(2,1,1)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-4,-2;4 2];
plot(t,x2t)
ylabel('t')
title('x2(t) =cos(4*pi*t)')
subplot(2,1,2)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-4,0;4 4];
plot(t,xot_x1t_x2t)
ylabel('t')
title('xo(t)+x1(t)+x2(t)')
//
figure
subplot(2,1,1)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-4,-3;4 3];
plot(t,x3t)
ylabel('t')
title('x1(t) =2/3*cos(6*pi*t)')
subplot(2,1,2)
a = gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-4,-3;4 3];
plot(t,xt)
ylabel('t')
title('x(t)=xo(t)+x1(t)+x2(t)+x3(t)')

//clear//
//Example 2.8:Convolution Integral of input x(t)=(e^2t).u(-t) and
//h(t) = u(t-3)
clear;
close;
clc;
Max_Limit = 10;
h =[0,0,0,ones(1,Max_Limit-3)]; //h(n-3)
a = 2;
t = -9:0;
x= exp(a*t);
//x = x1($:-1:1)
N2 = 0:length(h)-1;
N1 = -length(x)+1:0;
t1 = -6:3;
y1 = (1/a)*exp(a*(t1-3));
y2 = (1/a)*ones(1,Max_Limit);
y = [y1 y2]
N = -length(h)+1:length(x)-1;
figure
a=gca();
a.x_location="origin";
a.y_location="origin";
plot2d(-Max_Limit+1:0,h($:-1:1)) 
xtitle('Impulse Response','t','h(t-T)');
a.thickness = 2;
figure
a=gca();
a.y_location = "origin";
plot2d(t,x) 
xtitle('Input Response','t','x(t)');
a.thickness = 2;
figure
a=gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-10,0;13,1];
plot2d(-Max_Limit+4:Max_Limit+3,y) 
xtitle('Output Response','t','y(t)');
a.thickness = 2;

//clear//
//Example 2.8:Convolution Integral of input x(t)=(e^2t).u(-t) and
//h(t)=u(t-3)
clear;
close;
clc;
Max_Limit=0.1;
x=[0,0,0,ones(1,Max_Limit+0.5)-ones(1,Max_Limit-0.5)];
w=2;
t = -9:0;
h= exp(%i*w*t);
N2 = 0:length(x)-1;
N1 = -length(h)+1:0;
t1 = -6:3;
y1 =(1/%i*w)*(exp(%i*w*(t+0.5)));
y2 =(1/%i*w)*(ones(1,Max_Limit));
y = [y1 y2]
N = -length(x)+1:length(h)-1;
figure
a=gca();
a.y_location = "origin";
plot2d(t,h) 
xtitle('Input Response','t','h(t)');
a.thickness = 2;
figure
a=gca();
a.y_location = "origin";
a.x_location = "origin";
a.data_bounds=[-10,0;13,1];
plot2d(-Max_Limit+4:Max_Limit+3,y) 
xtitle('Output Response','t','y(t)');
a.thickness = 2;

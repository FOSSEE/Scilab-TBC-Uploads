//time domain analysis of continuous time systems
//Convolution Integral of input x(t) = (e^-t).u(t)and g(t) =u(t)
clear;
close;
clc;
Max_Limit = 10;
t =linspace(-1,1,10001);
for i=1:length(t)
    g(i)=1;
end
t1=linspace(0,3,10001);
for i=1:length(t1)
x(i)= t1(i)/3;
end
y = convol(x,g);
figure
a=gca();
size(t)
size(g)
plot2d(t,g) 
xtitle('Impulse Response','t','h(t)');
a.thickness = 2;
figure
a=gca();
size(x)
plot2d(t1,x) 
xtitle('Input Response','t','x(t)');
a.thickness = 2;
figure
a=gca();
T=linspace(-1,4,20001);
size(y)
plot2d(T,y) 
xtitle('Output Response','t','y(t)');
a.thickness = 2;
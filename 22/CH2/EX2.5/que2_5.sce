//time domain analysis of continuous time systems
//Convolution Integral of input x(t) = (e^-t).u(t)and g(t) =(e^-2*t)u(t)
clear;
close;
clc;
Max_Limit = 10;
t = 0:0.001:10;
for i=1:length(t)
     g(i) =(exp(-2*t(i)));
end
  x= exp(-(t));

y = convol(x,g)
figure
a=gca();
plot2d(t,g) 
xtitle('Impulse Response','t','h(t)');
a.thickness = 2;
figure
a=gca();
plot2d(t,x) 
xtitle('Input Response','t','x(t)');
a.thickness = 2;
figure
a=gca();
T=0:0.001:20;
plot2d(T,y) 
xtitle('Output Response','t','y(t)');
a.thickness = 2;
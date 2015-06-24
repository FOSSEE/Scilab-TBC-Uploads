//clear//
//Example 2.6:Convolution Integral of input x(t) = (e^-at).u(t)
//and h(t) =u(t)
clear;
close;
clc;
Max_Limit = 10;
h = ones(1,Max_Limit);
N2 =0:length(h)-1;
a = 0.5;  //constant a>0
for t = 1:Max_Limit
  x(t)= exp(-a*(t-1));
end
N1 =0:length(x)-1;
y = convol(x,h)-1;
N = 0:length(x)+length(h)-2;
figure
a=gca();
plot2d(N2,h) 
xtitle('Impulse Response','t','h(t)');
a.thickness = 2;
figure
a=gca();
plot2d(N1,x) 
xtitle('Input Response','t','x(t)');
a.thickness = 2;
figure
a=gca();
plot2d(N(1:Max_Limit),y(1:Max_Limit)) 
xtitle('Output Response','t','y(t)');
a.thickness = 2;

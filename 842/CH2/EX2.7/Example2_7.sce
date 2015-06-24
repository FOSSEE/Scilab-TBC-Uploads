//clear//
//Example 2.7:Convolution Integral of fintie duration signals
//page99
clear;
close;
clc;
T = 10;
x = ones(1,T);  //Input Response
for t = 1:2*T
  h(t) = t-1;    //Impulse Response
end
N1 = 0:length(x)-1;
N2 = 0:length(h)-1;
y = convol(x,h);
N = 0:length(x)+length(h)-2;
figure
a=gca();
a.x_location="origin";
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
plot2d(N,y) 
xtitle('Output Response','t','y(t)');
a.thickness = 2;

//clear//
//Example 2.1:Linear Convolution Sum
//page 80
clear;
close;
clc;
h = [0,0,1,1,1,0,0];
N1 = -2:4;
x = [0,0,0.5,2,0,0,0];
N2 = -2:4;
y = convol(x,h);
for i = 1:length(y)
  if (y(i)<=0.0001)
    y(i)=0;
  end
end
N = -4:8;
figure
a=gca();
plot2d3('gnn',N1,h) 
xtitle('Impulse Response','n','h[n]');
a.thickness = 2;
figure
a=gca();
plot2d3('gnn',N2,x) 
xtitle('Input Response','n','x[n]');
a.thickness = 2;
figure
a=gca();
plot2d3('gnn',N,y) 
xtitle('Output Response','n','y[n]');
a.thickness = 2;

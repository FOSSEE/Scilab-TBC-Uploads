//clear//
//Example 2.4:Convolution Sum of finite duration sequences
clear;
close;
clc;
x = ones(1,5);
N1 =0:length(x)-1;
Alpha = 1.4;    //alpha > 1
for n = 1:7
  h(n)= (Alpha^(n-1))*1;
end
N2 =0:length(h)-1;
y = convol(x,h);
N = 0:length(x)+length(h)-2;
figure
a=gca();
plot2d3('gnn',N2,h) 
xtitle('Impulse Response','n','h[n]');
a.thickness = 2;
figure
a=gca();
plot2d3('gnn',N1,x) 
xtitle('Input Response','n','x[n]');
a.thickness = 2;
figure
a=gca();
plot2d3('gnn',N,y) 
xtitle('Output Response','n','y[n]');
a.thickness = 2;

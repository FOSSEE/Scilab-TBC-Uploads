//clear//
//Example 2.3:Convolution Sum:Convolution of x[n] and
//Unit Impulse response h[n]
clear;
close;
clc;
Max_Limit = 10;
h = ones(1,Max_Limit);
N1 = 0:Max_Limit-1;
Alpha = 0.5;    //alpha < 1
for n = 1:Max_Limit
  x(n)= (Alpha^(n-1))*1;
end
N2 = 0:Max_Limit-1;
y = convol(x,h);
N = 0:2*Max_Limit-2;
figure
a=gca();
plot2d3('gnn',N1,h) 
xtitle('Impulse Response Fig 2.5.(b)','n','h[n]');
a.thickness = 2;
figure
a=gca();
plot2d3('gnn',N2,x) 
xtitle('Input Response Fig 2.5.(a)','n','x[n]');
a.thickness = 2;
figure
a=gca();
plot2d3('gnn',N(1:Max_Limit),y(1:Max_Limit),5) 
xtitle('Output Response Fig 2.7','n','y[n]');
a.thickness = 2;

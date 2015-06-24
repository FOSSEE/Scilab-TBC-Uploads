//clear//
//Example 2.5:Convolution Sum of input sequence x[n]=(2^n).u[-n]
//and h[n] = u[n]
clear;
close;
clc;
Max_Limit = 10;
h = ones(1,Max_Limit);
N2 =0:length(h)-1;
for n = 1:Max_Limit
  x1(n)= (2^(-(n-1)))*1;
end
x = x1($:-1:1);
N1 = -length(x)+1:0;
y = convol(x,h);
N = -length(x)+1:length(h)-1;
figure
a=gca();
plot2d3('gnn',N2,h) 
xtitle('Impulse Response','n','h[n]');
a.thickness = 2;
figure
a=gca();
a.y_location = "origin";
plot2d3('gnn',N1,x) 
xtitle('Input Response Fig 2.11(a)','n','x[n]');
a.thickness = 2;
figure
a=gca();
a.y_location ="origin";
plot2d3('gnn',N,y) 
xtitle('Output Response Fig 2.11(b)','n','y[n]');
a.thickness = 2;

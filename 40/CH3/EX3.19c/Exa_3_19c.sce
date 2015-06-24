//Analytical Evaluation of Discrete convolution
clear;close;clc;
max_limit=5;
h(1)=0;
for n=2:max_limit
    h(n)=0.8^n;
end
n2=0:length(h)-1;
x=[0 ones(1:max_limit)]
n1=-length(x)+1:0;
y=convol(x,h);
n=-length(x)+1:length(h)-1;
a=gca();
subplot(211);
plot2d3('gnn',n2,h)
xtitle('impulse Response','n','h[n]');
a.thickness=2;
a.y_location="origin";
a=gca();
subplot(212);
plot2d3('gnn',n1,x)
a.y_location="origin";
xtitle('input response','n','x[n]');
xset("window",1);
a=gca();
plot2d3('gnn',n,y)
a.y_location="origin";
a.x_location="origin";
xtitle('output response','n','y[n]');

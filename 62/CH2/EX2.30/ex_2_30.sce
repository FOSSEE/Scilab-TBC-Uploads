clear;
clc;
x=[0 0 1 1 1 1 0 0];
h=[0 0 1 1 1 0 0];
nx=-2:length(x)-3;
nh=-2:length(h)-3;
y=convol(x,h);
ny=min(nx)+min(nh):max(nx)+max(nh);
figure
a=gca();
a.x_location="origin";
plot2d3(nh,h) 
plot(nh,h,'r.')
xtitle('Impulse Response','n','h[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
a.y_location="left";
figure
a=gca();
plot2d3(nx,x)
plot(nx,x,'r.') 
a.y_location="left";
a.x_location="origin";
xtitle('Input Response','n','x[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
figure
a=gca(); 
plot2d3(ny,y)
plot(ny,y,'r.')
a.x_location="origin";
a.y_location="left";
xtitle('Output Response','n','y[n]');
a.children.children.thickness = 3;
a.children.children.foreground= 2;
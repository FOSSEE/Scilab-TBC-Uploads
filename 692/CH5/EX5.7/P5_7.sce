//EXAMPLE 5.7
//Circular convolution
clear;
clc;
g = [1 2 0 1];
disp(g,'g[n] = ');
h = [2 2 1 1];
disp(h,'h[n] = ');
G = fft(g,-1);
H = fft(h,-1);
Y = G.*H;
yc = fft(Y,1);
n1 = 0:length(yc)-1;
yl = convol(g,h);
n2 = 0:length(yl)-1;

clf();
subplot(2,1,1)
a = gca();
plot2d3(n1,yc,2);
plot(n1,yc,'r.');
a.x_location = 'origin';
a.y_location = 'origin';
poly1 = a . children (1) . children (1) ;
poly1.thickness = 3;
xtitle('circular convolution','n','yc');

subplot(2,1,2)
a = gca();
plot2d3(n2,yl,2);
plot(n2,yl,'r.');
a.x_location = 'origin';
a.y_location = 'origin';
poly1 = a . children (1) . children (1) ;
poly1.thickness = 3;
xtitle('linear convolution','n','yl');

disp(real(yc),"  circular convolution,yc = ");
disp(yl,"  linear convolution,yl = ");


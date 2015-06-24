//EXAMPLE 5.8
//Cicular convolution
clc;
clear;
g = [1 2 0 1];
disp(g,'g[n] = ');
h = [2 2 1 1];
disp(h,'h[n] = ');
G = fft(g,-1);
H = fft(h,-1);
Y = G.*H;
yc = fft(Y,1);//IDFT of Y
disp(yc,"circular convolution,yc = ")
n=0:3;
clf();
figure(0);
a = gca();
plot2d3(n,yc,2);
plot(n,yc,'r.');
a.x_location = 'origin';
a.y_location = 'origin';
poly1 = a . children (1) . children (1) ;
poly1.thickness = 3;
xtitle('Circular convolution','n','yc');


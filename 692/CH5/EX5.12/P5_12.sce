//EXAMPLE 5.12
//Linear convolution using Circular convolution
clc;
clear;
g = [1 2 0 1];
disp(g,'g[n] = ');
h = [2 2 1 1];
disp(h,'h[n] = ');

//linea convolution length = 4+4-1 = 7 
//appending the two signals with zeros
g = [g,zeros(1,3)]
h = [h,zeros(1,3)]
G = fft(g,-1);
H = fft(h,-1);
Y = G.*H;     //element wise multiplication
y = fft(Y,1);//IDFT

//Plotting linear convolution
n=0:6;
figure(0);
clf();
a = gca();
a.x_location = 'origin';
a.y_location = 'origin';
plot2d3(n,y,2);
plot(n,y,'r.');
poly1 = a . children (1) . children (1) ;
poly1.thickness = 2;
xtitle('Linear convolution','n','y');
disp(y," linear convolution ,y = ");



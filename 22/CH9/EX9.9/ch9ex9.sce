//signals and systems
//discreet time fourier series
//IDTFT:Impulse Response of Ideal Low pass Filter 
clear;
clc;
close;
Wc = 1;    //1 rad/sec
W  = -Wc:0.1:Wc; //Passband of filter
H0 = 1; //Magnitude of Filter
HlpW = H0*ones(1,length(W));
//Inverse Discrete-time Fourier Transform
t = -2*%pi:2*%pi/length(W):2*%pi;
ht1 =(1/(2*%pi))*HlpW *exp(sqrt(-1)*W'*t);
size(ht1)
n=-21:21;
size(n)
ht=ht1.*(%e^%i*2*t);
ht = real(ht);
figure
subplot(2,1,1)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
a.data_bounds=[-%pi,0;%pi,2];
plot2d(W,HlpW,2);
poly1 = a.children(1).children(1);
poly1.thickness = 3;
xtitle('Frequency Response of LPF H(exp(jW))')
subplot(2,1,2)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
a.data_bounds=[-2*%pi,-1;2*%pi,2];
size(t)
size(ht)
plot2d3('gnn',t,ht);
poly1 = a.children(1).children(1);
poly1.thickness = 3;
xtitle('Impulse Response of LPF h(t)')
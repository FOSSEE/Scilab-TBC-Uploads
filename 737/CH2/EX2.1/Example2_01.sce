//Example 2.1 page 19
//Suppose that an analog signal is given as
//x(t) = 5*cos(2*pi*1000t), for t >= 0
//and is sampled at the rate of 8,000 Hz.
//a. Sketch the spectrum for the original signal.
//b. Sketch the spectrum for the sampled signal from 0 to 20 kHz.

clc;
clear;
close;
fs = 8000;//Hz
t = 1:(1/fs):10;
x = 5*cos(2*%pi*1000*t);

//c1 and f1 are derived using the euler's identity which gives
//  5cos(2pi*1000t) = 2.5 * %e^(%i*2*%pi*1000t)+ 2.5 * %e^(-%i*2*%pi*1000t)
c1 = [2.5 2.5];    
f1 = [-1 1];//kHz

ax=gda();
ax.thickness = 2;
ax.y_location = "origin";
ax.x_location = "origin";

subplot(2,1,1)
plot2d3(f1,c1)
xtitle('Spectrum of the analog signal in Example 2.1(a)','f(kHz)','X(f)');

//c2 = [2.5 2.5 2.5 2.5 2.5 2.5 2.5 2.5 2.5 2.5]
//f2 = [-17 -15 -9 -7 -1 1 7 9 15 17]
c2 = repmat([2.5],1,10);//amplitude is same for each
f2 = [f1-16 f1-8 f1 f1+8 f1+16];//after sampling, spectrum is replicated cyclically with centered at +-n8000Hz
subplot(2,1,2);
plot2d3(f2,c2)
xtitle('Spectrum of the sampled signal in Example 2.1(b)','f(kHz)','Xs(f)');
//Example 2.2 page 23
//
//Assuming that an analog signal is given by
//x(t) = 5 cos (2*%pi*2000*t) + 3*cos(2*%pi*3000*t),for t>=0
//and it is sampled at the rate of 8,000 Hz,
//a. Sketch the spectrum of the sampled signal up to 20 kHz.
//b. Sketch the recovered analog signal spectrum if an ideal lowpass filter with
//a cutoff frequency of 4 kHz is used to filter the sampled signal
//(y(n) = x(n)in this case) to recover the original signal.

clc;
clear;
close;
fs = 8000;//Hz
t = 1:(1/fs):10;
x = 5*cos(2*%pi*2000*t)+ 3*cos(2*%pi*3000*t);
//before sampling

//c1 and f1 are derived using the euler's identity which gives
//  x(t) = 1.5 * %e^(-%i*2*%pi*3000t)+ 2.5 * %e^(-%i*2*%pi*2000t)+ 2.5 * %e^(%i*2*%pi*2000t) + 1.5 * %e^(%i*2*%pi*3000t)

c1 = [1.5 2.5 2.5 1.5];
f1 = [-3 -2 2 3];//kHz

//after sampling
c2 = repmat(c1,1,5);
f2 = [f1-16 f1-8 f1 f1+8 f1+16];
ax=gda();
ax.thickness = 2;
ax.y_location = "origin";
ax.x_location = "origin";

subplot(2,1,1)
plot2d3(f2,c2)
xtitle('Spectrum of the sampled signal in Example 2.2(a)','f(kHz)','X(f)');
//Since Sampling theorem is satisfied, we can recover the original spectrum using reconstruction low pass filter.
subplot(2,1,2)
plot2d3(f1,c1)
xtitle('Spectrum of the recovered signal in Example 2.2(b)','f(kHz)','X(f)');

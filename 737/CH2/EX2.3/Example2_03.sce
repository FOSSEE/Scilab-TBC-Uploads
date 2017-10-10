//Example 2.3 page 24
//Given an analog signal
//x(t) = 5 cos (2 pi 2000t)+ 1 cos( 2pi 5000t), for t>=0
//which is sampled at a rate of 8,000 Hz,
//a. Sketch the spectrum of the sampled signal up to 20 kHz.
//b. Sketch the recovered analog signal spectrum if an ideal lowpass filter with
//a cutoff frequency of 4 kHz is used to recover the original signal
//(y(n)= x(n) this case).

clc,clear,close;

c1 = [0.5 2.5 2.5 0.5];
//sampling theorem is violated
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
xtitle('Spectrum of the sampled signal in Example 2.3(a)','f(kHz)','X(f)');
//Since Sampling theorem is not satisfied, we can not recover the original spectrum using reconstruction low pass filter.
subplot(2,1,2)
plot2d3(f1,c1)
xtitle('Spectrum of the recovered signal in Example 2.3(b)','f(kHz)','X(f)');

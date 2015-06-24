//clear//
//Example6.3:Analog Lowpass IIR filter design
//Cutoff frequency Fc = 500Hz
//Passband ripple 1-0.05 and stopband ripple = 0.05
clear;
close;
clc;
hs_butt = analpf(5,'butt',[0.05,0.05],500);
hs_ellip = analpf(5,'ellip',[0.05,0.05],500);
fr=0:.1:2000;
hf_butt=freq(hs_butt(2),hs_butt(3),%i*fr);
hm_butt = abs(hf_butt);
hf_ellip=freq(hs_ellip(2),hs_ellip(3),%i*fr);
hm_ellip = abs(hf_ellip);
//Plotting Magnitude Response of Analog IIR Filters
a = gca();
plot2d(fr,hm_butt)
poly1 = a.children(1).children(1);
poly1.foreground = 2;
poly1.thickness = 2; 
poly1.line_style = 3; 
plot2d(fr,hm_ellip)
poly1 = a.children(1).children(1);
poly1.foreground = 5;
poly1.thickness = 2;
xlabel('Frequency(Hz)')
ylabel('Magnitude of frequency response')
legend(['Butterworth Filter';'Elliptic Filter'])

//Graphical//
//Example 8.3.6
// To Design an Analog Butterworth Filter
//For the given cutoff frequency Wc = 500 Hz 
clear;
clc;
close;
omegap = 2*%pi*500;
omegas = 2*%pi*1000;
delta1_in_dB = -3;
delta2_in_dB = -40;
delta1 = 10^(delta1_in_dB/20)
delta2 = 10^(delta2_in_dB/20)
//Calculation of Filter Order
N = log10((1/(delta2^2))-1)/(2*log10(omegas/omegap))
N = ceil(N)
omegac = omegap;
//Poles and Gain Calculation
[pols,gain]=zpbutt(N,omegac);
disp(N,'Filter order N =')
disp(pols,'Pole positions are pols =')
//Magnitude Response of Analog IIR Butterworth Filter
h=buttmag(N,omegac,1:1000);
//Magnitude in dB
mag=20*log10(h);
plot2d((1:1000),mag,[0,-180,1000,20]);
a=gca();
a.thickness = 3;
a.foreground = 1;
a.font_style = 9; 
xgrid(5)
xtitle('Magnitude Response of Butterworth LPF Filter Cutoff frequency = 500 Hz','Analog frequency in Hz--->','Magnitude in dB -->');
//Result
//Filter order N =      7. 
//s  =
// column 1 to 3
// -699.07013+3062.8264i  -1958.751+2456.196i  -2830.4772+1363.086i  
// column 4 to 6
//-3141.5927+3.847D-13i  -2830.4772-1363.086i  -1958.751-2456.196i  
//column 7
//- 699.07013-3062.8264i  

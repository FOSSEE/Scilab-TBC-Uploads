//clear//
//Example 5.7:Frequency Shifting Property of DTFT:Frequency Response of Ideal Low pass Filter and HPF
clear;
clc;
close;
Wc = 1;    //1 rad/sec
W  = -Wc:0.1:Wc; //Passband of filter
H0 = 1; //Magnitude of Filter
HlpW = H0*ones(1,length(W));
Whp1 = W+%pi;
Whp2 = -W-%pi;
figure
subplot(2,1,1)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
a.data_bounds=[-%pi,0;%pi,2];
plot2d(W,HlpW);
xtitle('Frequency Response of LPF H(exp(jW))')
subplot(2,1,2)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
a.data_bounds=[-2*%pi,0;2*%pi,2];
plot2d(Whp1,HlpW);
plot2d(Whp2,HlpW);
xtitle('Frequency Response of HPF H(exp(jW))')

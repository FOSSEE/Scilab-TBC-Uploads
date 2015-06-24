//signals and systems
//discrete fourier transform
//Frequency Shifting Property of DTFT
clear;
clc;
close;
mag = 4;
W  = -%pi/4:0.1:%pi/4;
H1 = mag*ones(1,length(W));
W1 =W+%pi/2;
W2 = -W-%pi/2;
figure
subplot(2,1,1)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
a.data_bounds=[-%pi,0;%pi,2];
plot2d(W,H1);
xtitle('Frequency Response of the given H(exp(jW))')
subplot(2,1,2)
a = gca();
a.y_location ="origin";
a.x_location ="origin";
a.data_bounds=[-2*%pi,0;2*%pi,2];
plot2d(W1,0.5*H1);
plot2d(W2,0.5*H1);
xtitle('Frequency Response of modulated signal H1(exp(jW))')
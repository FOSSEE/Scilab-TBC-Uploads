//EXAMPLE 3.5
//DTFT of unit sample sequence
clc;
clear;
//a=0.5;
n=0:9;
x = [1,zeros(1,9)];
disp(x,'x[n] = ')

K = 4;
k = 0:4/1000:4;
W = k*2*%pi/K;
X = (x)*exp(%i*n'*W);
disp(X,'DTFT,x[n] --> ')
X_mag   = abs(X);
X_phase = phasemag(X);//no phase exists

figure(0);
plot2d3(mtlb_fliplr(W),X_mag);
xtitle('Magnitude plot','W --->','X_mag --->');
figure(1);
plot2d3(mtlb_fliplr(W),X_phase);
xtitle(' zero phase plot','W --->','X_phase --->');





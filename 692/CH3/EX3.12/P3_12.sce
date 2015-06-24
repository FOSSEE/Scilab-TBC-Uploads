//EXAMPLE 3.12
//x[n]=((-1)^n)*(a^n)*u[n].....given a=0.5;

clc;
clear;

a=0.5;
n=0:9;
for i = 0:9
    x(i+1) = (a*exp(-%i*%pi))^i;
end

//The DTFT of the sequence
K = 4;
k = 0:4/1000:4;
W = k*6*%pi/K;
X = (x')*exp(%i*n'*W);
X_mag   = abs(X);
X_phase = phasemag(X);

//PLOTTING GRAPHS FOR THE INTERVAL OF 0 TO 6*%pi
clf();
a=gca();
figure(0);
plot2d3(mtlb_fliplr(W),X_mag);
xtitle('Magnitude response','W','Amplitude');
figure(1);
plot2d3(mtlb_fliplr(W),X_phase);
xtitle('Phase response','W','X_phase,degrees');














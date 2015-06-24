//EXAMPLE 3.6
//Determine DTFT of sequence
//PROGRAM REQUIRES MAXIMA SCILAB TOOLBOX

clc;
clear;
//Symbolic calculation
Syms n w a ;
x1=(a^n)*exp(-%i*n*w);
X1=nusum(x1,n,0,%inf);
disp(X1,'DFT,X = ');

//Given:
a=0.5;
n=0:9;
//x[n]=a^n*u[n]
for i = 0:9
    x(i+1) = a^i; 
end
//The DTFT of the sequence
K = 4;
k = 0:4/1000:4;
W = k*6*%pi/K;
X = (x')*exp(%i*n'*W);
X_mag   = abs(X);
[X_phase,db] = phasemag(X);

clf();
a=gca();
figure(0);
//Note %pi ~ 3.14
plot2d3(mtlb_fliplr(W),X_mag);
xtitle('Magnitude response','W --->','Amplitude --->');
figure(1);
plot2d3(mtlb_fliplr(W),X_phase);
xtitle('Phase response','W --->','Phase in degrees --->');













//EXAMPLE 3.13

clc;
clear;
a=0.5;
n=0:9;
for i = 0:9
    x(i+1) = a^i; 
end
//The DTFT of the sequence
K  = 4;
k  = 0:4/1000:4;
W  = k*6*%pi/K;
X1 = (x')*exp(%i*n'*W);
X  = %i*diff(X1);
X  = [X,0] + X1;

X_mag   = abs(X);
[X_phase,db] = phasemag(X);

clf();
a=gca();
figure(0);
plot2d3(mtlb_fliplr(W),X_mag);
xtitle('Magnitude response','W','X_mag');
figure(1);
plot2d3(mtlb_fliplr(W),X_phase);
xtitle('Phase response','W','X_phase');






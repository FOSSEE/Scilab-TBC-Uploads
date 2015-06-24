//Sketch Pole-zero plot of z-domain signal,(1+0.8*z^(-1)+0.8*z^(-2))/(1+0.49*z^(-2))
clc;
clear;
z=poly(0,"z");
X=(1+0.8*z^(-1)+0.8*z^(-2))/(1+0.49*z^(-2));
disp(X,'Given z Transform=>');
plzr(X);
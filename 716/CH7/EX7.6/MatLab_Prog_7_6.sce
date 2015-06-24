//Sketch Pole-zero plot of z-domain signal,(z.^2+0.8*z+0.8)/(z.^2+0.49)
clc;
clear;
z=poly(0,"z");
X=(z.^2+0.8*z+0.8)/(z.^2+0.49);
disp(X,'Given z Transform=>');
plzr(X);
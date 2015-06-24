//Sketch plot of given s-domain signal,X(s)=(s+2)*(s.^2+8*s+20)/(s+3)/(s.^2+2*s+2)
clc;
clear;
s=poly(0,"s");
X=(s+2)*(s.^2+8*s+20)/(s+3)/(s.^2+2*s+2);
disp(X,'given s-domain signal=>');
plzr(X);
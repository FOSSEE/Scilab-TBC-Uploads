//sketch the poles and zeros of rational function of s
//X=(s+1)*(s.^2+10*s+41)/(s+4)/(s.^2+4*s+13);
clc;
clear;
s=poly(0,"s");
X=(s+1)*(s.^2+10*s+41)/(s+4)/(s.^2+4*s+13);
disp(X,'given s-domain signal=>');
plzr(X);

clc;
f=20*10**3;
T=1/f;
disp('microsec',T*10**6,"T=");
t=(0:0.1:5*%pi)';
plot2d1('onn',t,[squarewave(t,75)]);

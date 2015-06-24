
clc;
tp=10*10**-6;
c=1000*10**-12;
R1=tp/(1.1*c);
disp('Kohm',R1*10**-3,"R1=");
t=(0:0.1:5*%pi)';
plot2d1('onn',t,[squarewave(t,60)]);

//example 5.8
clc; funcprot(0);
Df=1;
B=1.75;
qnet=120;
N60=10;
Fd=1+0.33*Df/B;
Se=2*qnet/N60/Fd*(B/(B+0.3))^2;
disp(Se,"settlement in mm");


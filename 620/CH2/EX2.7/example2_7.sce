disp("Part a");
d=0.064*2.54/100;
a=%pi*(d^2)/4;
i=15;
q=1.6*10^(-19);
n=8.85*10^28;
v=i/(a*q*n);
disp("the drift velocity of an individual electron (in m/s) is"); disp(v);
disp("Part b");
t=60;
d=v*t*100/2.54;
disp("the distance an electron moves (in inches) is"); disp(d);
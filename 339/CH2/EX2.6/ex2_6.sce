L=209.4*10^-9; //line inductance in H/m
C=119.5*10^-12; //line capacitance in F/m
vp=1/sqrt(L*C); // phase velocity
Z0=sqrt(L/C); // characteristic line impedance
d=0.1; // line length
N=500; // number of sampling points
f=1*10^9+3*10^9*(0:N)/N; // set frequency range
Z=tan(2*%pi*f*d/vp); // short circuit impedance
plot(f/1*10^9,abs(Z0*Z));
title('Input impedance of a short-circuited transmission line');
xlabel("Frequency,GHz");
ylabel("Input impedance,|Z");
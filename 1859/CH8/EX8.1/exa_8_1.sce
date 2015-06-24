// Exa 8.1
clc;
clear;
close;
// Given data
l=25;// in mm
l=l*10^-3;// in meter
d=5;// in mm
d=d*10^-3;// in meter
S= 20;// in cm
S= S*10^-2;// in meter
Va= 3000;// in volts
TraceLength= 10;// in cm
TraceLength=TraceLength*10^-2;// in meter
y=TraceLength/2;
Vd= 2*d*Va*y/(l*S);// in volts
Vrms= Vd/sqrt(2);// in volts
Vrms= floor(Vrms);
disp(Vrms,"RMS value of the sinusoidal voltage applied to the X-deflecting plates in volt");
DeflectionSensitivity= l*S/(2*d*Va);// in m/V
disp(DeflectionSensitivity*10^3,"Deflection Sensitivity in mm/V");

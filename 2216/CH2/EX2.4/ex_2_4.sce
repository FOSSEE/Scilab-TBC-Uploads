//Example 2.4 // pulse broadning
clc;
clear;
close;
format('v',6)
disp("part (a)")
h=850;//WAVELENGTH IN NANO METER
l=80;//fiber length in Km
dh=30;//in Nano Meter
m1=105.5;//material dispersion for h=850nm in ps/nm-Km
m2=2.8;//material dispersion for h=1300nm in ps/nm-Km
t=m1*l*dh*10^-3;//material dispersion in ns when h=850nm
disp(t,"material dispersion in ns when h=850nm")
disp("part (b)")
h=1300;//WAVELENGTH IN NANO METER
l=80;//fiber length in Km
dh=30;//in Nano Meter
m1=105.5;//material dispersion for h=850nm in ps/nm-Km
m2=2.8;//material dispersion for h=1300nm in ps/nm-Km
t=m2*l*dh*10^-3;//material dispersion in ns when h=850nm
disp(t,"material dispersion in ns when h=1300nm")

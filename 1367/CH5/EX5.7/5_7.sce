//Find Planar Density
//Ex:5.7
clc;
clear;
close;
r_po=1.7*10^-10;//radius of polonium in m
r_rh=1.34*10^-10;//radius of rhodium in m
r_cr=1.25*10^-10;//radius of chromium in m
a_po=2*r_po;//in m
a_rh=2*sqrt(2)*r_rh;//in m
a_cr=4*r_cr/sqrt(3);
p_po=1/a_po^2;// /sqm
disp(p_po,"Planar Density on [100] in Polonium (per sqm) = ");
p_rh=1.414/a_rh^2;// /sqm
disp(p_rh,"Planar Density on [110] in Rhodium (per sqm) = ");
p_cr=1.732/a_cr^2;// /sqm
disp(p_cr,"Planar Density on [111] in Chromium (per sqm) = ");
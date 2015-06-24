//Caption:Calculate ratio of circular waveguide cross-sectional area to rectangular waveguide cross-section
//Exa:4.6
clc;
clear;
close;
//For TE Wave propagated:
//for Rectangular , taking (a=2b)
r=100;//assume
//for TE11, wavelength=2*pi*r/1.841
//for TE10, wavelength=2a
a=(2*%pi*r/1.841)/2;
ar_rec_TE=(a)*(a/2);
ar_cir_TE=%pi*r^2;
ratio_TE=(ar_cir_TE)/(ar_rec_TE);
disp(ratio_TE,'Ratio of Circular & Rectangular coss-section area (in TE) =');
//For TM Wave propagated:
//for Rectangular , taking (a=2b)
//for TE01, wavelength=2.6155*r
//for TE11, wavelength=4b/sqrt(5)
b=(2.6155*r)/1.78885;
ar_rec_TM=(b)*(b);
ar_cir_TM=%pi*r^2;
ratio_TM=(ar_cir_TM)/(ar_rec_TM);
disp(ratio_TM,'Ratio of Circular & Rectangular coss-section area (in TM) =');
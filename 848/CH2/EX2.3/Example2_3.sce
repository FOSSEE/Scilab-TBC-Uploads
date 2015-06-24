//clear//
//Caption:Program  to Calculate NORMALIZED FREQUENCY 'V' and Numerical Aperture
//Example2.3
//Page 58
clear;
close;
clc;
a = 25e-06;
Lambda =1300e-09;
V = 26.6;
Numerical_Aperture = V*Lambda/(2*%pi*a)
disp(Numerical_Aperture,"Numerical Aperture is");
disp(M = (V^2)/2,'Total number of modes M entering the fiber is:')
//Result
// Numerical Aperture is:    0.2201431  
// Total number of modes M entering the fiber is:   353.78  

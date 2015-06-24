//clear//
//Caption:Calculation of normalized distance parameter for dispersion shifted fiber
//Example12.5
//page 446
clear;
clc;
close;
Ts = 20e-12; //FWHM soliton pulse width in seconds
D = 0.5e-06; //dispersion of the fiber ps/(nm.km)
Lambda = 1550e-9;//wavelength in meter
C = 3e08;//free space velocity in m/s
Ldisp = 0.322*2*%pi*C*(Ts^2)/((Lambda^2)*D);
disp(Ldisp/1000,'dispersion length in Km Ldisp =')
//Result
//dispersion length in Km Ldisp =  202.10804  

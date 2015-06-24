//Chapter-6 example 4
//=============================================================================
clc;
clear;
//input data
Va  = 900 ;//Accelarating voltage in volts
F   = 3.2*10^9;//operating frequency
d   = 10^-3;
//Calculations
Ve  = (0.593*10^6)*sqrt(Va);//electron velocity
w   = 2*%pi*F;
theta  = w*(d/Ve);//transit angle in radians
Be  = sin(theta/2)/(theta/2);//Beam Coupling Co-efficient
//output
mprintf('Electron Velocity is %g m/s\n Transit Angle is %g rad\n Beam Coupling Co-efficient is %3.3f ',Ve,theta,Be);
//=============end of the program===============================================

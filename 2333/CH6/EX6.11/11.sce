clc
// given that

d = 9 // Diameter of ore of wire in mm
P_b = 180 // Threshold optical power for Brillouin scattering in mW
P_r = 1.9 // Threshold optical power for Raman scattering  W
nu = 1 // Bandwidth in GHz
 // Sample Problem 11 on page no. 278
printf("\n # PROBLEM 11 # \n")
ratio = P_b*1e-3/P_r // Calculation of ratios of powers
lambda = ratio*5.9*1e-2*(d*1e-3)^2/(4.4*1e-3*(d*1e-3)^2) // Calcualtion of wavelength
printf("\n Standard formula used \n P_b = 4.4*1e-3*d^2*lambda^2*alpha.\nP_r = 5.9*1e-3*d^2*lambda^2*alpha \n")
printf("\n wavelength of laser is %fmicron. ",lambda)

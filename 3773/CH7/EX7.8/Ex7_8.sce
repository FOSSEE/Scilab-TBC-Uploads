//Chapter 7: Loop, Slot and Horn Antennas
//Example 7-20.1
clc;

//Variable Initialization
delta_e = 0.2       //Path length difference in E-plane (lambda)
delta_h = 0.375     //Path length difference in H-plane (lambda)
a_e = 10            //E-plane aperture (lambda)


//Calculation
L = a_e**2/(8*delta_e)    //Horn length(lambda)
theta_e = 2*atan(a_e,2*L)*180/%pi   //Flare angle in E-plane (degrees)
theta_h = 2*acos(L/(L+delta_h))*180/%pi                            //Flare angle in the H-plane (degrees)
a_h = 2*L*tan(theta_h/2*%pi/180)   //H-plane aperture (lambda)

hpbw_e = 56/a_e     //Half power beamwidth in E-plane (degrees)
hpbw_h = 67/a_h     //Half power beamwidth in H-plane (degrees)

D = 10*log10(7.5*a_e*a_h)  //Directivity (dB)

//Result
mprintf("The length of the pyramidal horn is %.1f lambda", L)
mprintf("\nThe flare angles in E-plane and H-plane are %.1f and %.2f degrees",theta_e,theta_h)
mprintf("\nThe H-plane aperture is %.1f lambda",a_h)
mprintf("\nThe Half power beamwidths in E-plane and H-plane are %d and %.1f degrees", hpbw_e,hpbw_h)
mprintf("\nThe directivity is %.1f dBi",D)

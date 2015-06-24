//Chapter-2,Example 2_22,Page 2-42
clc()

//Given Data:
N=2.54/15000*10^-2      //N=(a+b) grating element
lam=5.9*10^-7           //Wavelength of light
m=2                     //order
f=25*10^-2              //focal length of lens

//Calculations:

//We know, (a+b)*sin(theta)=m*lam
theta=asin(m*lam/N)      //angular position in first minima

Ad=m/N/cos(theta)              //angular dispersion

ld=f*Ad*10^-8                  //linear dispersion (dx/dl) in cm/angstrom
printf('Linear dispersion in spectrograph is = %.5f cm/angstrom \n \n',ld)

dlam=(5896-5890)               //difference in wavelength
dx=ld*dlam*10^-2               //separation between spectral lines in meter
printf(' Separation between spectral lines is = %.5f m \n \n',dx)

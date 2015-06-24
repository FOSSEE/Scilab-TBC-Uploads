//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.3w
//calculation of the wavelengths of the violet and the red light

//given data
D=2.5//separation(in m) between the slit and the screen
d=0.5*10^-3//separation(in m) between the slits
yv=2*10^-3//distance(in m) between the central white fringe and the first violet fringe
yr=3.5*10^-3//distance(in m) between the central white fringe and the first red fringe

//calculation
lambdav=yv*d/D//wavelength of the violet light
lambdar=yr*d/D//wavelength of the red light

printf('the wavelength of the violet light is %d nm',lambdav*10^9)
printf('\nthe wavelength of the red light is %d nm',lambdar*10^9)

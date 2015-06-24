clc
clear
//Input data
l=0.112*10^-9//Wavelength of X-rays in m
q=90//Angle of scattering in degrees
m=9.1*10^-31//Mass of the electron in kg
h=6.625*10^-34//Plancks constant in J.s
c=(3*10^8)//Velocity of light in m/s

//Calculations
dl=((h*(1-cosd(q)))/(m*c))/10^-10//The Compton angle in degrees
l1=(dl+(l/10^-10))//Wavelength of the X-rays scattered at an agle of 90 degrees in angstroms
dE=((h*c*((1/l)-(1/(l1*10^-10)))))/10^-17//The energy of the recoiling electron in J*10^-17

//Output
printf('(a) Wavelength of the X-rays scattered at an agle of 90 degrees with respect to the original direction is %3.3f angstroms \n (b) The energy of the scattering electron after the collision is %3.2f*10^-17 J',l1,dE)

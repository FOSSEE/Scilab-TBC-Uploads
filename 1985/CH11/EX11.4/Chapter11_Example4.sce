
clc
clear
//Input data
V=24800//Potential difference applied in V
n=1//Order of diffraction
l=1.54*10^-10//Wavelength of X-ray beam in m
q=15.8//Glancing angle in degrees

//Calculations
d=((n*l)/(2*sind(q)))/10^-10//Interplanar spacing in m
lmin=12400/V//Minimum wavelength of X-rays emitted in angstroms
q=asind((n*lmin*10^-10)/(2*d*10^-10))//Glancing angle for minimum wavelength in degrees
qx=(q-int(q))*60//For output
qy=(qx-int(qx))*60//For output

//Output
printf('The grating spaing for NaCl crystal is %3.3f angstroms \n Glancing angle for minimum wavelength is %3.0f degrees %3.0f minutes %3.0f seconds',d,q,qx,qy)

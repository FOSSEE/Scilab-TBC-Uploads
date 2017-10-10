//Example 3.4, Page Number 118
//Acousto-optic modulator
clc;
l=633*(10**-9) //Wavelength in meter
bw=5.0*(10**6) //Bandwidth in hertz
L=50*(10**-3) //Modulation length in milli meter
de=0.7 //Diffraction Efficiency
al=4.3*(10**-5) //Acoustic Wavelength in meter
av=3500.0 //Acoustic velocity in meter per second

theta=asin(l/(2*al)) //theta is the angle of diffraction
theta1=theta *(180 /%pi) //Converting it into degrees 

phi=2*(asin(sqrt(de))) //phi is the internal braggs angle
phi1=phi *(180/%pi) //Converting it into degrees 

ca=cos(theta1)

dn=(phi*l*ca)/(3.14*2*L) //dn is the maximum change in refraction index

B=av/bw
B=B*(10**3)
mprintf("The Angle of Diffraction is  %.2f Degree\n",theta1)
mprintf(" The Internal Braggs Angle is  %.1f Degree\n",phi1)
mprintf(" The Maximum Change in Refraction index is %.2e\n",dn)//The Answer for Maximum Change in Refraction index is miscalculated in the book
mprintf(" The Maximum Optical Beam Width is  %.1f mm\n",B)



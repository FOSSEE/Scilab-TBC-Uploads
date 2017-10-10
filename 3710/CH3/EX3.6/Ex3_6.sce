//Example 3.6, Page Number 124
//Coherence Length
clc;
nw=1.5019 //Refraction index at 0.8 micrometer
n2w=1.4802 //Refraction index at 0.4 micrometer
l=0.8*(10**-6) //Vaccum Wavelength at the fundamental frequency in m

lc=l/(4*(nw-n2w)) //lc is the coherence length in meters

mprintf("The Coherence Length is %.2e m",lc);

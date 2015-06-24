//Chapter 27
clc
//Example 4
//given
l=0.3*10^-6 //wavelength of light  in meters
W=2.46 //work function for sodium in ev
c=3*10^8 //velocity of light in m/s
h=6.63*10^-34//js
//a) Maximum KE of the ejected photoelectrons
E=(h*c/l)/(1.6*10^-19) //energy of each photon of th eilluminating light beam in ev
KE_max=E-W
disp(KE_max,"a) Maximum Kinetic energy of th eejected photoelectrons in ev is")
//b) Cut off wavelength for sodium 
W1=W*1.6*10^-19
lc=h*c/W1
disp(lc,"b) Cut off wavelength for sodium in meters is")



clc
clear
//Input data
W=3.6//Work function of zinc in eV
l=2000*10^-10//Wavelength of light used in m
h=6.625*10^-34//Plancks constant in J.s
c=3*10^8//Velocity of light in m/s
e=1.6*10^-19//Charge of electron in Columbs
m=9.1*10^-31//Mass of the electron in kg

//Calculations
lo=((h*c)/(W*e))//Threshold wavelength of zinc in m
KE=((h*c*(lo-l))/(lo*l*e))//Kinetic energy of the photoelectrons in eV
v=(sqrt((2*KE*e)/m))/10^5//Velocity of photoelectrons in m/s*10^5

//Output
printf('The kinetic energy of the photoelectrons emitted is %3.2f eV \n The velocity of the ejected photoelectrons is %3.2f*10^5 m/s',KE,v)

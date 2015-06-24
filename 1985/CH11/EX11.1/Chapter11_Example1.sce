clc
clear
//Input data
h=6.625*10^-34//Plancks constant in J.s
e=(1.6*10^-19)//Charge of the electron in C
c=(3*10^8)//Velocity of light in m/s
V=(10*10^3)//Potential difference applied in V

//Calculations
lmin=(12400/V)//The wavelength of X-rays emitted in angstroms
v=(c/(lmin*10^-10))/10^18//Frequency of the X-ray beam emitted in Hz*10^18

//Output
printf('The shortest wavelength of X-rays produced by an X-ray tube is %3.2f angstroms \n The frequency of the X-ray beam emitted is %3.3f*10^18 Hz',lmin,v)

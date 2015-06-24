//chapter 5
//example 5.9
//Calculate de-Broglie wavelength of proton
//page 106
clear;
clc;
//given
m_e=9.1E-31; // in Kg (mass of electron)
m_p=1.6E-27; // in Kg (mass of proton)
h=6.626E-34; // in J-s (Planck's constant)
c=3E8; // in m/s (velocity of light)
//calculate
E=m_e*c^2; // in J (rest energy of electron)
// Since lambda=h/(m*v)
// E=mv^2/2;
// Therefore lambda=h/sqrt(2*m*E)
// Also E=m_e*c^2;
// therefore lambda=h/sqrt(2*m_p*m_e*c^2)
lambda=h/sqrt(2*m_p*m_e*c^2); // calculation of wavelength
printf('\nThe de-Broglie wavelength of proton is \t=%1.4E m',lambda);
lambda=lambda*1E10; //changing unit from m to Angstrom
printf('\n\t\t\t\t\t=%1.4E Angstrom',lambda);

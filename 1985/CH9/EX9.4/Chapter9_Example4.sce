clc
clear
//Input data
V=100//Potential difference in V
e=(1.6*10^-19)//Charge of the electron in coloumbs
h=(6.625*10^-34)//Plancks constant in Js
m=(9.1*10^-31)//Mass of the electron in kg
c=(3*10^8)//Velocity of light in m/s

//Calculations
v=sqrt((2*e*V)/m)/10^6//Velocity of the electron in m/s*10^6
u=(c^2/(v*10^6))/10^10//Phase velocity of the electron in m/s *10^10
l=(h/(m*(v*10^6)))/10^-10//de Broglie wavelength in angstroms
p=(m*(v*10^6))/10^-24//Momemtum of the electron in kg.m/s *10^-24
V1=(1/(l*10^-10))/10^9//Wave number of the electron wave in m^-1

//Output
printf('(i) Velocity of the electron is %3.5f*10^6 m/s \n (ii) Phase velocity of the electron is %3.4f*10^10 m/s  \n (iii) de Broglie wavelength is %3.5f angstroms \n (iv) Momemtum of the electron is %3.6f *10^-24 kg.m/s \n (v) Wave number of the electron wave is %3.6f *10^9 m^-1',v,u,l,p,V1)

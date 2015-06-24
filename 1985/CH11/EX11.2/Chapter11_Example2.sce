clc
clear
//Input data
V=10*1000//Potential difference applied in V
I=2*10^-3//Current in A
e=(1.6*10^-19)//Charge of the electron in C
m=9.1*10^-31//Mass of the electron in kg

//Calculations
n=(I/e)/10^16//Number of electrons striking the target per second *10^16
v=sqrt((2*e*V)/m)/10^7//Velocity of the electron in m/s*10^7
lmin=12400/V//Wavelength of the X-rays in angstroms

//Output
printf('Number of electrons striking the target per second is %3.2f*10^16 \n Velocity of the electron is %3.2f*10^7 m/s \n Wavelength of the X-rays is %3.2f angstroms',n,v,lmin)

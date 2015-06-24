clc
clear

//input data
mp=12 //flow rate in kg/s
Ae=335*10^-4 //exit area in m^2
Ce=2000 //exhaust velocity in m/s
h=10 //altitude in km
Pe=1*10^5 //exhaust pressure in Pa
P0=1*10^5 //p0=atomspheric pressure in Pa at h=0.
P10=0.25*10^5 //atmospheric pressure in Pa using gas tables

//calculations
Fs=mp*Ce*10^-3 //thrust of motor at sea level since pe=p0 in kN
F10=((mp*Ce) + Ae*(Pe-P10))*10^-3 //thrust of motor at altitude of 10km in kN

//output
printf('(A)thrust of motor at sea level is %3i kN (upwards) \n (B)thrust of motor at an altitude 10km is %3.4f kN',Fs,F10)

clc
clear
//Input data
l=0.7078//Wavelength of X-rays in m
ZMo=42//Atomic number of molybdenum 
ZCd=48//Atomic number of cadmium

//Calculations
lCd=(l)*((ZMo-1)^2/(ZCd-1)^2)//Wavelength of Cadmium radiation in angstroms

//Output
printf('The wavelength of cadmium radiation is %3.4f angstroms',lCd)

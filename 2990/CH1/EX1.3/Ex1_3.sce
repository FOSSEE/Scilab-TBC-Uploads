
clc; funcprot(0);
// Initialization of Variable
T=273.0+30.0;//temperature in K
l=0.85;//wavelength in m
p=752.4;//pressure mm of Hg
c=299792.5e3;//speed of light in km/s
f=24e6;//frequency in Hz
//calculation
no=1+(287.604+4.8864/l**2+0.068/l**4)/1e6;
ns=1+(no-1)*273/T*p/760;
V=c/ns;
l=V/f;
disp(l,"wavelength of light in m")
clear()

//Optical Fiber communication by A selvarajan
//example 2.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//case-1
ncore=1.46//refractive index of core
nclad=1//refractive index of cladding
c=3e5//velocity of light in Km/s
L=1// length of path in Km
NA=sqrt(ncore^2-nclad^2)//Numerical aperture
delt_tau_by_L=(NA^2)/(2*c*ncore) //multipath pulse broadening in s/Km
delt_tau=delt_tau_by_L*L//bandwidth distance product Hz
BL=(1/delt_tau)*L//bandwidth distance product Hz
mprintf('Numerical aperture=%f',NA);//The answers vary due to round off error
mprintf('\nMultipath pulse broadening=%fns/Km',delt_tau_by_L*1e9);//The answer provided in the textbook is wrong//multiplication by 1e9  to convert s/Km to ns/Km 
mprintf('\nBandwidth distance product=%fMHz',BL*1e-6);//The answer provided in the textbook is wrong//multiplication by 1e-6 to convert Hz to MHz
//case-2
ncore=1.465//refractive index of core
nclad=1.45//refractive index of cladding
NA=sqrt(ncore^2-nclad^2)//Numerical aperture
delt_tau_by_L=(NA^2)/(2*c*ncore) //multipath pulse broadening in s/m
BL=(1/delt_tau_by_L)*L//bandwidth distance product Hz
mprintf('\n\nNumerical aperture=%f',NA);
mprintf('\nMultipath pulse broadening=%fns/Km',delt_tau_by_L*1e9);//The answer provided in the textbook is wrong//multiplication by 1e9 to convert s/Km to ns/Km 
mprintf('\nBandwidth distance product=%fGHz',BL*1e-9);//The answer provided in the textbook is wrong//multiplication by 1e-6 to convert Hz to GHz

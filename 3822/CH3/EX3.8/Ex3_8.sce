

//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 3.8
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
n1=1.48;//refractive index of core
delta=0.0022;//relative refractive index difference
a=4.5*10^-6;//core radius
lamda=1.3*10^-6;//wavelength in m
cod=9*10^-3;//core diameter
cad=125*10^-3;//cladding diameter
C=3e8;//velocity of light in m/s
Vd2VbbydV2=0.48//waveguide dispersion constant at V=2.14
V=((2*%pi*a)/lamda)*n1*((2*delta)^0.5);//V-number
n2=n1*(1-delta);
DelGbyZdelL=(-n2*delta)*Vd2VbbydV2/(C*lamda);//waveguide dispersion in ps/Km?nm
mprintf("waveguide dispersion =%.2f ps/Km/nm",DelGbyZdelL*1e6)//multiplication by 1e6 to convert unit ps/Km/nm

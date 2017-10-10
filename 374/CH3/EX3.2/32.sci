//chapter 3 example 2//
//temperature of silica glass=T,isothermal compressebility=Bc,refractive index of silica=n1,photoelastic coeffcient of silica=P,boltzmann constant=Kb,optical wavelength=l,rayleigh scattering coeffcient=Tr,attenuation in km=Akm,attenuation in db=Adb//
clc
clear
n1=1.46;
P=0.286;
Bc=7*(10^-11);//in meter sqr per newton//
l=(10^-6)// in meters//
T=1400//in kelvin//
Kb=1.38*(10^-23)//in joules per kelvin//
Tr=((8*(%pi^3))*(n1^8)*(P^2)*Bc*Kb*T)/(3*(l^4));
printf("\n rayleigh scattering constant=%f per metre.\n",Tr);
Akm=exp(-1*Tr*(10^3));
Adb=10*(log10(1/Akm));
printf("\n attenuation in db=%f db per Km.\n",Adb);

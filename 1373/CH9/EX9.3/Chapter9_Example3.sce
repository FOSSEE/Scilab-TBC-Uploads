//Chapter-9, Example 9.3, Page 384
//=============================================================================
clc
clear

//INPUT DATA
t=0.8;//Transmittivity of glass in the region except in the wave length region [0.4,3]
T=5555;//Temperature of black body in K

//CALCULATIONS
ao=0;//a0 in micro K
a1=(0.4*T);//a1 for the wavelength 0.4 micro meter in micro K
a2=(3*T);//a1 for the wavelength 3 micro meter in micro K
F0=0;//From Table 9.2 on page no.385
F1=0.10503;//From Table 9.2 on page no.385
F2=0.97644;//From Table 9.2 on page no.385
t1=t*(F2-F1);//Average hemispherical transmittivity of glass 

//OUTPUT
mprintf('Average hemispherical transmittivity of glass is %3.2f',t1)

//=================================END OF PROGRAM==============================

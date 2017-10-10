clc;
clear;
myu=1.45 //refractive index
t1=5*10^-6 //thickness of the sheet in m
Beta=0.3*10^-3 //bandwidth in m
lambda=5860*10^-10 //wavelength in m

//calculation
X_0=((myu-1)*t1*Beta)/lambda //shift of the central band in m
t2=(X_0*lambda)/(Beta*(myu-1))

mprintf("The thickness of the mica sheet is = %1.3e m.",t2)
//The answer provided in the textbook is wrong.

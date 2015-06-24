//fiber optic communications by joseph c. palais
//example 6.2
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
n=3.51; //for  GaAsP  refractive index
Lambda=1.55;//wavelength in um
//to find
grating_period1=Lambda/(2*n);//grating period in um for firstorder diffraction
grating_period2=2*grating_period1;//grating period in um for second order diffraction
mprintf("Grating period for First order diffraction=%fum",grating_period1);
mprintf("\nGrating period for Second order diffraction=%fum",grating_period2);


//Chapter 2 : Diffraction

clear;

//Variable declaration
lamda=5893*10**-8         //wavelength
dlamda=6*10**-8
n=3                       //third order

//Calculations
N=lamda/(n*dlamda)

//Result
mprintf("Number of grating lines= %.1f",N)


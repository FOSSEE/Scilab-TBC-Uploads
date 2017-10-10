//Chapter 11 : Free Electron Theory Of Metals

clear;

//Variable declaration
rho=1.54*10**-8         //resistivity
n=5.8*10**28            //electron density
e=1.602*10**-19         //charge on electron
m=9.1*10**-31           //Mass of electron

//Calculations
tau=m/(n*(e**2)*rho)/10**-14

//Result
mprintf("Relaxation time= %1.2f*10**-14 seconds",tau)

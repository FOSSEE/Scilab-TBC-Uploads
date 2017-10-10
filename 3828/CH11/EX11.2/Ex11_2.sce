//Chapter 11 : Free Electron Theory Of Metals

clear;

//Variable declaration
sigma=6.8*10**7        //conductivity
n=8.5*10**28           //number of electrons
m=9.1*10**-31          //Mass of electron
e=1.6*10**-19          //charge on electron
k=1.38*10**-23         //Boltzmann's constant in J/K
T=300                  //temperature in K

//Calculations
lamda=(2*sigma*sqrt(3*m*k*T))/(n*e**2)/10**-9

//Result
mprintf("Mean free path for electron= %1.1f*10**-9 m",lamda)

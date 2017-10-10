//Chapter 15 : Dielectric Material

clear;

//Variable declaration
V=15                    //potential difference
C=6*10**-6              //Capacitance
epsilon0=8.854*10**-12  //absloute permittivity
epsilonr=8              //relative permittivity
A=360*10**-4            //surface Area

//Calculations
E=(V*C)/(epsilon0*epsilonr*A)/10**7
T=epsilon0*(epsilonr-1)*V*A/10**-12

//Result
mprintf("Electric field strength = %f*10**7 V/m",E)
mprintf("\nTotal dipole moment = %.1f*10**-12 C-m",T)

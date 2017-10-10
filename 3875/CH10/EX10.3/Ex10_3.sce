clc;
clear;
h=4.136*10^-15 //Plancks constant in eV
c=3*10^8 //velocity of light in m/s
R=1.097*10^7 //Rydberg constant m^-1
lambda1= 900 //wavelength in nm
T1_by_T2=1/3   //Ratio of temperature T1 to T2
n1=2 //energy level of atom
n2=3 //energy level of atom

//calculation

lambda2=(lambda1*T1_by_T2)//wavelength in nm
E=(h*c)/(lambda2*10^-9) //Energy of incident photon in eV
Ex=R*h*c*((1/n1^2)-(1/n2^2)) //Excitation energy in eV
W=E-Ex 

mprintf("The work function of the metal is = %1.2f eV",W)

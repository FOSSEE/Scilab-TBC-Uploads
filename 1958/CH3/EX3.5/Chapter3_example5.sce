clc
clear
//Input data
m=(9.1*10^-31)//Mass of the electron in kg
v=(3*10^8)//Velocity of light in m/s
c=(1.6*10^-19)//Charge of the electron in coloumbs

//Calculations
Re=(m*v^2)/(c*10^6)//Rest energy in MeV
E=(Re/sqrt(1-0.9^2))//Total energy in MeV

//Output
printf('Rest energy of the electron is %3.3f MeV \n Total energy is %3.4f MeV',Re,E)

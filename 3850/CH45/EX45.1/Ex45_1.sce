
//To Find the Electric Field which gives 1eV average energy to a conduction electron

//Example 45.1

clear;

clc;

e=1.6*10^-19;//Charge on an electron in Coloumbs

Eav=1*e;//Energy to the Conduction Electron in Joules

l=4*10^-8;//Mean Free Path of Conduction Electrons in Copper

E=Eav/(e*l);//Electric field which can give, on an average, 1eV to a conduction electron

printf("Electric field which can give, on an average, 1eV to a conduction electron = %.1f*10^7 V/m",E*10^-7);

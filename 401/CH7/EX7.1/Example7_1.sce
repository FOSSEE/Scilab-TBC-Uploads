//Example 7.1
//Program to determine the total carrier recombination lifetime and
//the power internally generated within the device

clear;
clc ;
close ;

//Given data
Tau_r=60;          //ns - RADIATIVE RECOMBINATION LIFETIME
Tau_nr=100;        //ns - NON RADIATIVE RECOMBINATION LIFETIME
Lambda=0.87*10^-6; //metres - PEAK EMISSION WAVELENGTH
c= 2.998*10^8;     //m/s - SPEED OF LIGHT
h= 6.626*10^(-34); //J/K - PLANK's CONSTANT
e=1.602*10^(-19);  //Coulumbs - CHARGE OF AN ELECTRON
i=40*10^(-3);      //A - DRIVE CURRENT

//Total carrier recombination lifetime
Tau=Tau_r*Tau_nr/(Tau_r+Tau_nr);

//Internal quantum efficiency
eeta_int=Tau/Tau_r;

//Power internally generated within the device
P_int=eeta_int*h*c*i/(Lambda*e);

//Displaying the Results in Command Window
printf("\n\n\t Total carrier recombination lifetime is %0.1f ns.",Tau);
printf("\n\n\t Power internally generated within the device is %0.1f mW .",P_int/10^(-3));
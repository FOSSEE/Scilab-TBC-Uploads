//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-3 ;Example 3.8
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Sr=200                                      //rated power of transformer in MVA
VT1p=345                                    // rated voltage of transformer primary side in kV
VT1s=34.5                                   // rated voltage of transformer secondary side in kV
Xeq=0.08                                    // leakage reactance of transformer in ohms
pf=0.8                                      //lagging power factor
Irated=1.0                                  //rated current in Amperes
Irated1=1.0*exp(%i*(-36.87)*(%pi/180))      //consider real and imaginary value of rated current
VAN=1.0                                     //source voltage in Volts
Vdrop=Irated*Xeq                            //per unit magnitudes of transformer voltage drop
Van=VAN-(%i*Xeq)*Irated1                    //per unit magnitudes of transformer voltage at low voltage terminals 
Isc=VAN/Xeq                                 //per unit magnitudes of transformer fault current


printf('The magnitude of transformer voltage drop in per unit is %.4f pu \n',Vdrop);
printf('The magnitude of transformer voltage at low voltage terminal in per unit is %.4f and its angle is %.4f degrees\n',abs(Van),atand(imag(Van),real(Van)));
printf('The magnitude of fault current in per unit is %.4f pu\n',Isc);

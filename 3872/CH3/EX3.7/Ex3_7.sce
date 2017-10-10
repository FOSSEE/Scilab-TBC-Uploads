//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-3 ;Example 3.7
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Sr=400                                                  //rated power of transformer in MVA
VT1p=13.8                                               // rated voltage of transformer primary side in kV
VT1s=199.2                                              // rated voltage of transformer secondary side in kV
Xeq=0.10                                                // leakage reactance of transformer in Ohms
Sa=1000                                                 //High voltage side absorbs power in MVA
pf=0.90                                                 // lagging power factor
VANH=199.2
Sb=1200                                                 //base power in MVA
VbHLL=345                                               //Hihg volgage side lini to line base voltag in kV
IbH=1200/(345*sqrt(3))                                  //high voltage side base current in Amperes 

VAN=1.0                                                 //per unit load voltage
Theta=acos(0.9)
IA=((1000/(345*(sqrt(3))))/2.008)*(exp(%i*(-Theta)))    //Per unit load current
Van=VAN+(%i*Xeq)*IA                                     // voltage at low voltage bus
VbXLN1=13.8
Van1L=Van*VbXLN1                                        //low voltage wye winding in kV
Ean=(exp(%i*(-30)*(%pi/180)))*VAN                       //source voltage in per unit
Ia=(exp(%i*(-30)*(%pi/180)))*IA                         //source current in per unit
Van2=Ean+(%i*Xeq)*Ia
VbXLN2=13.8/(sqrt(3))
Van2L=Van2*VbXLN2                                       //low voltage delta winding in kV

printf('The magnitude of voltage at low voltage bus(star) in per unit is %.4f and its angle is %.4f degrees\n',abs(Van),atand(imag(Van),real(Van)));
printf('The magnitude of low voltage star winding in kV is %.4f kV and its angle is %.4f degrees\n',abs(Van1L),atand(imag(Van1L),real(Van1L)));
printf('The magnitude of voltage at low voltage bus(delta) in per unit is %.4f and its angle is %.4f degrees\n',abs(Van2),atand(imag(Van2),real(Van2)));
printf('The magnitude of low voltage delta winding in kV is %.4f kV and its angle is %.4f degrees\n',abs(Van2L),atand(imag(Van2L),real(Van2L)));

 






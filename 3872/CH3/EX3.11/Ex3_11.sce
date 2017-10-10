//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-3 ;Example 3.11
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Sr=20                                                           //rated power of transformer in kVA
E1=120                                                          //voltage at 120 Volt winding
E2=480                                                          //voltage induced across the 480 Volt winding
Zleak=0.0729*exp(%i*78.13*(%pi/180))                            //per unit leakage impedance of two winding transformer

EH=E1+E2                                                        //Voltage at the high Voltage terminals
I2=((Sr*1000)/E2)                                               //rated current of 480 Volt winding in Ampere
SH=EH*I2                                                        //kVA rating of 480 Volt winding
I1=(E2/E1)*I2                                                   //Current induced in the 120 Volt winding
Ix=I1+I2
Sx=E1*Ix                                                        //auto transformer rated power
ZbaseHold=((E2)^2)/(Sr*1000)                                    //base impedance at high voltage terminal of normal transformer 
ZbaseHnew=((EH)^2)/(Sx)                                         //base impedance at high voltage terminal of autotransformer 
Zpunew=(0.0729*exp(%i*78.13*(%pi/180)))*(ZbaseHold/ZbaseHnew)   //per unit impedance of transformer

printf('The Voltage at the high voltage terminals is %.4f Volts\n',EH);
printf('The Voltage at the low voltage terminals is %.4f Volts\n',E1);
printf('The auto transformer rated power is %.4f kVA\n',Sx/1000);
printf('The magnitude of impedance of transformer in per unit is %.4f and its angle is %.4f degrees\n',abs(Zpunew),atand(imag(Zpunew),real(Zpunew)));










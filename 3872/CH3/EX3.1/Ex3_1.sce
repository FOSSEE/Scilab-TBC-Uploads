//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-3 ;Example 3.1
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Sr=20                           //rated input power in kVA
E1rated=480                     //Rated voltage across winding 1 in Volts
E2rated=120                     //Rated voltage across winding 2 in Volts
F=60                            //frequency in Hertz
Sl=15                           //Load power in kVA
pf = 0.8                        // power factor lagging
E2=118                          //Load voltage in Volts

at=E1rated/E2rated              // Calculation of turns ratio
E1=at*E2                        // voltage across winding 1 in Volts
theta=acos(pf)
S2=Sl*exp(%i*theta)*1000        //complex load power in VA
I2=conj(S2)/conj(E2)            // Load current in Ampere
Z2=E2/I2                        // Load impedance in Ohms
Z2r=at^2*Z2                     //Load impedance referred to the 480V in Ohms
S1=S2                           //since complex power entering winding 1 is equal to the complex power leaving winding 2
P1=real(S1)
Q1=imag(S1)

printf('The voltage  across the 480V winding is %d Volts\n',E1);
printf('The magnitude of load impedance is %.4f Ohms and its angle is %.4f degree\n',abs(Z2),atand(imag(Z2),real(Z2)));
printf('The magnitude of load impedance referred to the 480V winding is %.4f Ohms and its angle is %.4f degree\n',abs(Z2r),atand(imag(Z2r),real(Z2r)));
printf('The real power supplied to the 480V winding is %d W\n',P1);
printf('The reactive power supplied to the 480V winding is %d VAR\n',Q1);

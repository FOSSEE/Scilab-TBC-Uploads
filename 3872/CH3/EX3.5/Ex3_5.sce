//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-3 ;Example 3.5
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Eab=480                                     //Line voltage of star connected voltage source in Volts
ZL=10*exp(%i*40*%pi/180)                    // Load impedance in Ohms
Zl=1*exp(%i*85*%pi/180)                     // Line impedance between source and load in Ohms
Sb=10                                       //Base power in kVA
VbLL=480                                    //line to line base voltage in Volts

Zb =((VbLL)^2/(Sb*1000))                    //Base impedance in Ohms
Zlpu=Zl/Zb                                  //per unit line impedance
ZLpu=ZL/Zb                                  //per unit load impedance
VbLN=VbLL/(sqrt(3))                         //line to neutral base voltage in Volts
Eanpu=(277*exp(%i*(-30)*%pi/180))/277       //source voltage in per unit
Iapu=Eanpu/(Zlpu+ZLpu)                      //per unit line current in phase a
Ib=(Sb*1000)/(sqrt(3)*VbLL)                 //base current in Amperes
Ia=Iapu*Ib                                  //actual phase a line current in Amperes

printf('The magnitude of per unit line current in phase a is %.4f and its angle is %.4f degree\n',abs(Iapu),atand(imag(Iapu),real(Iapu)));
printf('The magnitude of actual line current in phase a is %.4f Amperes and its angle is %.4f degrees\n',abs(Ia),atand(imag(Ia),real(Ia)));







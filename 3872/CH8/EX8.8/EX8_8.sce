//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 8 ; Example 8.8
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

Q = 900;                                              //rated power in MVA
Vg = 13.8;                                             //generator voltage in kV
Vt = 345;                                             //transmission line voltage in kV
Vd = 34.5;                                            //distribution line voltage in kV
V1 = 13.8;                                            //voltage at the winding X in kV
V2 = 199.2;                                           //voltage at the winding H in kV
V3 = 19.92;                                           //voltage at the winding M in kV
Zn = %i*0.10;                                          //neutral impedance in ohm
VbaseX = 13.8;                                        //rated line to line voltage of terminal X in kV
VbaseM = sqrt(3)*V3;                                  //rated line to line voltage of terminal M in kV
ZbaseM = (Vd^2)/Q;                                    //base impedance of medium line voltage in ohm
Zn = Zn/ZbaseM;                                       //neutral impedance in per unit

printf('\n The base impedance of medium voltage terminal ZbaseM is %f ohm',ZbaseM);
printf('\n The per unit neutral impedance is Zn is i%0.4f per unit', imag(Zn));


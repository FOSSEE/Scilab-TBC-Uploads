//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-9 ;Example 9.2
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Xn=0.05                       //motor neutral is grounded through reactance in per unit
Sb=100                        //Base value of system in MVA
Vb=13.8                       //Base voltage of system in kV
Vf=1.05                       //Prefault voltage in per unit
Z1=%i*0.13893                 //Positive sequence impedance in per unit


If=Vf/Z1                       //positive sequence fault current in per unit
a=exp(%i*(120)*(%pi/180))      //operator a
Isf=[1 1 1;1 (a^2) a;1 a (a^2)]*[0;If;0]  //subtransient fault current in each phase in per unit

disp(abs(Isf),'The magnitude of fault current in each phase in per unit is given by :',);
disp(atand(imag(Isf),real(Isf)),'The angle of fault current in each phase in degrees is given by:',);




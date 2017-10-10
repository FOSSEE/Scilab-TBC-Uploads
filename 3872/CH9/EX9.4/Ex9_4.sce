//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-9 ;Example 9.4
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Sb=100                          //Base value of system in MVA
Vb=13.8                         //Base voltage of system in kV
Vf=1.05                         //Prefault voltage in per unit
Z1=%i*0.13893                   //Positive sequence impedance in per unit
Z2=%i*0.14562                   //Negative sequence impedance in per unit
Zf=0                            //Fault through impedance in per unit
I0=0                            //Zero sequence current in per unit

I1=Vf/(Z1+Z2+Zf)                //sequence fault current in per unit
Isfb=-%i*sqrt(3)*I1             //subtransient fault current in phase b in per unit
Ib2=(Sb/(Vb*sqrt(3)))*Isfb      //subtransient fault current at phase b in kA
Isfc=-Isfb;                     //subtransient fault current at phase c in pu
Ic=-Ib2                         //subtransient fault current at phase c in kA

printf('The magnitude of subtransient fault current in phase b in per unit is :%.4f pu and its angle is:%.4f degrees\n',abs(Isfb),(180/%pi)*atan(imag(Isfb),real(Isfb)));
printf('The magnitude of subtransient fault current in phase b in kA is %.4f kA and its angle is %.4f degrees\n',abs(Ib2),(180/%pi)*atan(imag(Ib2),real(Ib2)));


printf('The magnitude of sequence fault current in phase c in per unit is %.4f pu and its angle is %.4f degrees\n',abs(Isfc),(180/%pi)*atan(imag(Isfc),real(Isfc)));
printf('The magnitude of sequence fault current in phase c in kA is %.4f kA and its angle is %.4f degrees\n',abs(Ic),(180/%pi)*atan(imag(Ic),real(Ic)));



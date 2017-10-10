//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-3 ;Example 3.3
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Sb=20                               //Base input power in kVA
Vb1=480                             //Base voltage across winding 1 in Volts
Vb2=120                             //Base voltage across winding 2 in Volts
f=60                                //frequency in Hertz
Zeq2=0.0525*exp(%i*78.13*%pi/180)   //Equivalent impedance of the transformer referred to 120 Volt winding 


Zb2=((Vb2^2)/(Sb*1000))             //Base impedance on the 120 Volts side of the transformer
Zeq2pu=Zeq2/Zb2                     //Per unit leakage impdeandce referred to winding 2
Zeq1=((Vb1/Vb2)^2)*Zeq2             //leakage impdeandce referred to winding 1
Zb1=((Vb1^2)/(Sb*1000))             //Base impedance on the 480 Volts side of the transformer
Zeq1pu=Zeq1/Zb1                     //Per unit leakage impdeandce referred to winding 1

printf('The magnitude of per unit leakage impdandce referred to winding 2 is %.4f pu and its angle is %.4f degree\n',abs(Zeq2pu),atand(imag(Zeq2pu),real(Zeq2pu)));
printf('The magnitude of per unit leakage impedance referred to winding 1 is %.4f pu and its angle is %.4f degree\n',abs(Zeq1pu),atand(imag(Zeq1pu),real(Zeq1pu)));


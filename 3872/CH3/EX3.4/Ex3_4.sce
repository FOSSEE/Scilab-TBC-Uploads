//Book - Power system: Analysisi & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J.Overbye
//Chapter-3 ;Example 3.4
//Scilab Version - 6.0.0; OS - Windows

clc;
clear;

Sb=30                                           //Base input power in kVA
Vg=220                                          //Actual value of source voltage
Vb1=240                                         //Base voltage across primary of transformer 1 in Volts
VT1p=240                                        //Rated voltage of primary of transformer 1 in Volts
VT1s=480                                        //Rated voltage of secondary of transformer 1 in Volts
VT2p=460                                        //Rated voltage of primary of transformer 2 in Volts
VT2s=115                                        //Rated voltage of secondary of transformer 2 in Volts
Xline=2                                         //Line reactance in Ohms
Zload=.9+%i*.2                                  //Load impedance in Ohms
XT1=0.1                                         //reactance of transformer 1 in per unit
XT2=0.1                                         //reactance of transformer 2 in per unit
Sb1=30                                          //MVA rating of transformer 1
Sb2=20                                          //MVA rating of transformer 2
Vspu=Vg/Vb1;                                    //per unit source voltage
                                    
Vb2=(VT1s/VT1p)*Vb1                             //Base voltage across the secondary of transformer 1 in Volts
Vb3=(VT2s/VT2p)*Vb2                             //Base voltage across the secondary of transformer 2 in Volts
Zb2=(Vb2^2)/(Sb*1000)                           //Base impedance of zone 2 in Ohms
Zb3=(Vb3^2)/(Sb*1000)                           //Base impedance of zone 3 in Ohms
Ib3=(Sb*1000)/Vb3                               //Base current in zone 3 in Amperes 
XT1pu=0.1                                       //MVA rating of system is equal to kVA rating of transformer 1
XT2pu=(XT2)*((VT2p/Vb2)^2)*(Sb/Sb2 )            //per unit leakage reactance of transformer 2
Xlinepu=Xline/Zb2                               //Per unit line reactance
Zloadpu=Zload/Zb3                               //per unit load impedance
Iloadpu=Vspu/(%i*(XT1+Xlinepu+XT2pu)+Zloadpu)   //per unit load current 
Iload=Iloadpu*Ib3                               //Actual load current in Amperes


printf('The per unit leakage reactance of transformer 2 is %.4f Ohms\n',XT2pu);
printf('The Per unit line reactance is %.4f per unit\n',Xlinepu);
printf('The per unit load impedance is %.4f+%.4fi Ohms\n',real(Zloadpu),imag(Zloadpu));
printf('The  magnitude of per unit load current is %.4f and its angle is %.4f degrees\n',abs(Iloadpu),(180/%pi)*atan(imag(Iloadpu),real(Iloadpu)));
printf('The  magnitude of actual load current is %.4f Amperes and its angle is %.4f degrees\n',abs(Iload),(180/%pi)*atan(imag(Iload),real(Iload)));
printf('The per unit value of source voltage is %.4f pu',Vspu)






                  //EXAMPLE 2-82         PG NO-117
Z1=4+%i*314.16;                       //Impedance
I1=1/Z1;                                  //CURRENT
disp('i)   Current (I1) is    =  '+string (I1) +'  A ');
I2=I1+%i*90;                             //CURRENT
disp('ii)   Current (I2) is    =  '+string (I2) +'  A ');
Z2=1/I2;                               //IMPEDANCE
disp('i)  Impedance (Z2) is    =  '+string (Z2) +'  ohm ');
R=310.16;                        //RESISTANCE
Xc=310.16;
F=50;
C=1/(2*%pi*F*Xc);
disp('i)   Capacitor (C) is    =  '+string (C) +'  F ');

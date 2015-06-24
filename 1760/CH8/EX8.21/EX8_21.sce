                 //EXAMPLE 8-21   PG NO-536-537
Ro=600;                      //RESISTANCE
Fc=10000;                    //FREQUENCY
F=25000;
L=Ro/(4*%pi*Fc);
C=1/(4*%pi*Fc*Ro);
Z=Ro*[1-(Fc/F)^2]^0.5;
Zo=Ro/[1-(Fc/F)^2]^0.5;
disp('i) INDUCTAR (L) is    =  '+string (L) +'  H ')
disp('ii) CAPACITOR (C) is    =  '+string (C) +'  F ')
disp('i) IMPEDANCE (Z) is    =  '+string (Z) +'  ohm ')
disp('ii) IMPEDANCE (Zo) is    =  '+string (Zo) +'  ohm ')


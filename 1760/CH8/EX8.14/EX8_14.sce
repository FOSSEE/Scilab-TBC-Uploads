         //EXAMPLE 8-14   PG NO-530
Ro=600;
Fc=20000;
L=Ro/(4*%pi*Fc);
C=1/(4*%pi*Ro*Fc);
disp('i) INDUCTANCE (L) is    =  '+string (L) +'  H ')
disp('ii) CAPACITOR (C) is    =  '+string (C) +'  F ')

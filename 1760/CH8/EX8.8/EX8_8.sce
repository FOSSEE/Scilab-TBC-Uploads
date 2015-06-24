              // EXAMPLE 8-8   PG NO-523
Ro=600;
Fc=2500;
L=Ro/(%pi*Fc);
C=1/(%pi*Ro*Fc);
disp('i) INDUCTANCE (L) is    =  '+string ([L]) +'  H ')
disp('ii) CAPACITOR (C) is    =  '+string ([C]) +'  F ')
Fo=2600;
m=sqrt(1-(Fc/Fo)^2)
disp('iii)  (m) is    =  '+string (m) +'   ')
L1=[(1-m*m)/4*m]*L;
disp('iv) INDUCTANCE (L1) is    =  '+string ([L1]) +'  H ')
L2=0.5*m*L;
disp('ii) INDUCTANCE (L2) is    =  '+string ([L2]) +'  H ')
C1=m*C;
disp('ii) CAPACITOR (C1) is    =  '+string (C1) +'  F ')

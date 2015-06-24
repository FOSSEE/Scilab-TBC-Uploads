              //EXAMPLE 8-7   PG NO-519
Fc1=1000;
Fc2=3000;
Ro=100;
L1=[(Ro*(Fc2-Fc1))/(2*%pi*Fc2*Fc1)]
disp('i) INDUCTANCE (L1/2) is    =  '+string ([L1]) +'  H ')
C1=1/[2*%pi*(Fc2-Fc1)];
disp('ii) CAPACITOR (C1) is    =  '+string (C1) +'  F ')
L2=Ro/[4*%pi*(Fc2-Fc1)];
disp('iii) INDUCTANCE (L2) is    =  '+string ([L2]) +'  H ')
C2=(Fc2-Fc1)/(%pi*Ro*Fc1*Fc2)
disp('ii) CAPACITOR (C2) is    =  '+string ([C2]) +'  F ')

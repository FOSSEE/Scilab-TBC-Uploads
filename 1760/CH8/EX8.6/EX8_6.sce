                       //EXAMPLE 8-7  PG NO-519
Ro=100;
Fc2=5000;
Fc1=500;
L1=Ro/[2*%pi*(Fc2-Fc1)];
disp('ii) INDUCTANCE (L1/2) is    =  '+string ([L1/2]) +'  H ')
C1=(Fc2-Fc1)/(2*%pi*Ro*Fc1*Fc2)
disp('ii) CAPACITOR (2*C1) is    =  '+string ([2*C1]) +'  F ')
L2=[Ro*(Fc2-Fc1)]/(4*%pi*Fc1*Fc2);
disp('ii) INDUCTANCE (L2) is    =  '+string ([L2]) +'  H ')
C2=1/(%pi*(Fc2-Fc1));
disp('ii) CAPACITOR (C2) is    =  '+string ([C2]) +'  F ')


                //EXAMPLE  8-1      PG N0-510
L=0.02;                //INDUCTANCE
C=4*10^-6;             //CAPACITOR
Z=200;
Fc=1/(%pi*(L*C)^0.5);
Z0=(L/C)^0.5;
Z1=(%i*2)*%pi*Z*L;
Z2=1/(%i*2*%pi*Z*C);
Z0*(%pi)=[(4*Z1*Z2*Z2)/(Z1+4*Z2)]^0.5
F1=2000;
Z11=%i*%pi*F1*L;
Z22=1/(%i*%pi*F1*C);
Z01=[(4*Z11*Z22*Z22)/(Z1+4*Z22)]^0.5;
disp('ii) POWER (Pmax) is    =  '+string ([Z1]) +'  W ');
disp('ii) POWER (Pmax) is    =  '+string ([Z2]) +'  W ');
disp('ii) POWER (Pmax) is    =  '+string ([Z0*(%pi)]) +'  W ');
disp('ii) POWER (Pmax) is    =  '+string ([Z11]) +'  W ');
disp('ii) POWER (Pmax) is    =  '+string ([Z22]) +'  W ');
disp('ii) POWER (Pmax) is    =  '+string ([Z01]) +'  W ');



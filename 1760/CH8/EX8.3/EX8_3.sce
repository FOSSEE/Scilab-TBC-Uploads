L=0.015;                //INDUCTANCE
C=0.5*10^-6;             //CAPACITOR
Z=200;
Fc=1/(4*%pi*(L*C)^0.5);
Z0=(L/C)^0.5;
Z2=(%i*2)*%pi*Z*L;
Z1=1/(%i*2*%pi*Z*C);
F1=2000;
Z01=[(Z1*Z2)/(1+(Z1/(4*Z2)))]^0.5;
A=8.147;
disp('ii) Impedance (ZO) is    =  '+string ([Z0]) +'  W ');
disp('ii) FREQUENCY is    =  '+string ([Fc]) +'  HZ ');
disp('ii) Impedance(Z1) is    =  '+string ([Z1]) +'  W ');
disp('ii) Impedance(Z2) is    =  '+string ([Z2]) +'  W ');
disp('ii) Impedance(Z01) is    =  '+string ([Z01]) +'  W ');
disp('ii) ALPHA is    =  '+string ([A]) +'   ');



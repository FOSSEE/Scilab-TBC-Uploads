   //EX 2-90  PG NO-135
R=20;          //RESISTANCE
Vc=250;       //VOLTAGE
I=1;        //CURRENT
F=50;        //FREQUENCY
W=2*%pi*F;
C=1/(W*50);       //CAPACITOR
L=1/(W*W*C);        //INDUTANCE
disp('W is = '+string(W)+' ');
disp('CAPACITANCE(C) is = '+string(C)+' F');
disp('INDUCTANCE(L) is = '+string(L)+' H');


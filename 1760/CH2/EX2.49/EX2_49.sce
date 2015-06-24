     //EXAMPLE 2-49   PG NO-93
K=0.35;     //CONSTANT
L1=0.1;       //INDUCTANCE
L2=0.2;     //INDUCTANCE
M=K*(L1*L2)^0.5;
V=125;        //VOLTAGE
F=50;        //FREQUENCY
L=0.2;     //  TOTAL INDUCTANCE
I=V/(2*%pi*F*L);      //CURRENT
disp(' M is = '+string(M)+' H');
disp(' current is = '+string(I)+' A');


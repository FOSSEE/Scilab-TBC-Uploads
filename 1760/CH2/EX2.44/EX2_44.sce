                        //EXAMPLE    2-44       PG NO 91-92
R=20;                       //Resistance
V=125;                      //VOLTAGE
I=2.2;                       //CURRENT
Z=V/I;                       //IMPEDANCE
disp('i) Impedance is = '+string(Z)+' ');
F=50;            //FREQUENCY
XC=53.18
C=1/[2*%pi*F*XC];                      //CAPACITANCE
disp('ii) Capacitor is = '+string(C)+' F');

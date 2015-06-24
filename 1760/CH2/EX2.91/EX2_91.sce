    //EXAMPLE 2-91  PG NO-135
L=10*10^-6;      //INDUCTANCE
R=1;        //RESISTANCE
C=10^4*10^-12;   //CAPACITOR
V=100;          //VOLTAGE
Z=L/(C*R);     //IMPEDANCE
I=V/Z;        //CURRENT
disp('IMPEDANCE is = '+string(Z)+'ohm');
disp('CURRENT is = '+string(I)+' A');

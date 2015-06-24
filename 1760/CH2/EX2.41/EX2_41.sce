      //EXAMPLE 2-41   PG NO-90
F1=50;                        //frequency
W=(2*%pi*F1);
L=1;                          //inductar
C=10^-6;                        //capacitor
XL1=W*L;
Xc1=1/(W*C);
Z1=XL1-Xc1;
F2=1000;
XL2=(2*%pi*F2*L);
Xc2=1/(2*%pi*F2*C);
Z2=(XL2-Xc2);               //impedance
disp(' IMPEDANCE(Z1) is = '+string(Z1)+' ohm');
disp(' IMPEDANCE(Z2) is = '+string(Z2)+'ohm');
disp(' XL1 is = '+string(XL1)+' ohm');
disp(' Xc1 is = '+string(Xc1)+' ohm');
disp(' XL2 is = '+string(XL2)+' ohm');
disp(' Xc2 is = '+string(Xc2)+' ohm');

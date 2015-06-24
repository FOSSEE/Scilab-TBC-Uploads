  //EXAMPLE 2-42    PG NO-90
F=50;                     //frequency
C=100*10^-6;                //capacitor
W=(2*%pi*F);
Xc=1/(W*C);
R=19.1;               //resistance
XL=25.46;
L=XL/(2*%pi*F);                 //inductance
disp(' Xc is = '+string(Xc)+' ohms');
disp(' INDUCTANCE is = '+string(L)+' H');

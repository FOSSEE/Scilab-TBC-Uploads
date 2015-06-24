                         //EXAMPLE 2-30     PG NO-81-82
V=230+%i*0;
F=50;
L=0.03;
R=20;
XL=2*%pi*F*L;
disp('i)   INDUCTANCE (XL) is  in polar form  =  '+string (XL) +'  ohm ');
Z=R+%i*XL;
disp('ii)   IMPEDANCE (Z) is  in polar form  =  '+string (Z) +'  ohm ');
Y=1/Z;
disp('iii)  ADMITTANCE (Y) is  in polar form  =  '+string (Y) +'  siemens ');
I=V/Z;
disp('iv)   CURRENT (I) is in polar form   =  '+string (I) +'  A ');
Vr=I*R;
disp('v)   VOLTAGE (Vr) is  in polar form  =  '+string (Vr) +'  V ');
VL=%i*XL*I
disp('vi)   VOLTAGE (VL) is  in polar form  =  '+string (VL) +'  V ');
Q=25.23;                     //TETA
PF=cos(Q);
disp('vi)   POWER FACTOR (PF) is    =  '+string (PF) +' lagging ');
P=V*I*cos(Q);       //ACTIVE POWER
disp('vi)   ACTIVE POWER (P) is  in polar form  =  '+string (P) +'  W ');
q=V*I*sin(Q)
disp('vi)   REACTIVE POWER (q) is  in polar form  =  '+string (q) +'  W ');
S=230*10.4;
disp('vi)   APPARENT POWER (S) is  in polar form  =  '+string (S) +'  VA ');


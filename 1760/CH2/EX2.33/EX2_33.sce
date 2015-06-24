                      //EXAMPLE 2-33     PG NO-84-85
V=230+%i*0;                  //Voltage
F=50;                     //Frequency
C=10^-4;                   //Capacitor
R=10;                   //Resistance
XC=1/[2*%pi*F*C];               //Capacitor
disp('i)   CAPACITOR (XC) is  in polar form  =  '+string (XC) +'  ohm ');
Z=R-%i*XC;                          //Impedance
disp('ii)   IMPEDANCE (Z) is  in polar form  =  '+string (Z) +'  ohm ');
Y=1/Z;                           //Admittance
disp('iii)  ADMITTANCE (Y) is  in polar form  =  '+string (Y) +'  siemens ');
I=V/Z;                            //current
disp('iv)   CURRENT (I) is in polar form   =  '+string (I) +'  A ');
Vr=I*R;                         // Voltage
disp('v)   VOLTAGE (Vr) is  in polar form  =  '+string (Vr) +'  V ');
VC=%i*XC*I              //Voltage
disp('vi)   VOLTAGE (VL) is  in polar form  =  '+string (VC) +'  V ');

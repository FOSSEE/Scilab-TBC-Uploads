                        //EXAMPLE 2-47   PG NO 92
V=100/sqrt(2);                //VOLTAGE
F=100;                      //FREQUENCY
L=0.018;                    //INDUCTANCE
XL=2*%pi*F*L;
disp('i)   INDUCTANCE (XL) is  in polar form  =  '+string (XL) +'  ohm ');
I=V/[(11.3+%i*11.3)];                    //current
disp('ii)   CURRENT (I) is  in polar form  =  '+string (I) +'  A ');
VR=I*10;                                   //voltage
disp('i)   Voltage Across Resister (VR) is    =  '+string (VR) +'  V ');

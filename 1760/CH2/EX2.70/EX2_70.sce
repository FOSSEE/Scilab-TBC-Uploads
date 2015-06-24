            //EXAMPLE 2-70      PG NO-110-111
ZA=-%i*227.36;               //IMPEDANCE
ZB=-%i*795.77;                        //IMPEDANCE
ZC=500;                         //IMPEDANCE
V=230+%i*0;                    //VOLTAGE
IA=V/ZA;                          //CURRENT
disp('i)  CURRENT (IA) is  in polar form  =  '+string (IA) +' A ');
IB=V/ZB;
disp('i)  CURRENT (IB) is  in polar form  =  '+string (IB) +' A ');
IC=V/ZC;
disp('i)  CURRENT (IC) is  in polar form  =  '+string (IC) +' A ');
I=IA+IB+IC;
disp('i)  CURRENT (I) is  in polar form  =  '+string (I) +' A ');
P=V*I*0.334;
disp('i)  POWER (P) is  in polar form  =  '+string (P) +' W ');
Z=V/I;
disp('vi)  IMPEDANCE (Z) is    =  '+string (Z) +' ohm ');

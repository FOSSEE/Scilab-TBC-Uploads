                 //EXAMPLE 2-38      PG N0-88-89
Z=12-%i*5;
V=100;            //VOLTAGE
I=V/Z;            //CURRENT
disp('i)   CURRENT (I) is in polar form   =  '+string (I) +'  A ');
Z1=4+%i*3;
Z2=6-%i*8;                         //impedance
V1=I*Z1;
disp('i)   voltage (V1) is in polar form   =  '+string (V1) +'  V ');
V2=I*Z2;                               //voltage
disp('i)   voltage (V2) is in polar form   =  '+string (V2) +'  V ');
V3=2*I;                             //voltage
disp('i)   voltage (V3) is in polar form   =  '+string (V3) +'  V ');
P=V*I*0.9230;                         //ACTIVE POWER
disp('i)   Active Power (P) is in polar form   =  '+string (P) +'  W ');

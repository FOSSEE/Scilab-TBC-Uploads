                       //EXAMPLE 2-40      PG NO-89-90
V1=52.33-%i*34.15878;
Z1=7.5-%i*9.999;        //IMPEDANCE
Z2=3.488+%i*12;        //IMPEDANCE
Z3=11.99+%i*5;
V2=[Z2/Z1]*V1;
disp('i)   voltage (V2) is in polar form   =  '+string (V2) +'  V ');
V3=[Z3/Z1]*V1;                         //voltage
disp('ii)   voltage (V3) is in polar form   =  '+string (V3) +'  V ');
V=V1+V2+V3;                        //total voltage
disp('i)   voltage (V) is in polar form   =  '+string (V) +'  V ');
Z=Z1+Z2+Z3;                   //Total  Impedance
disp('i)   IMPEDANCE (Z) is in polar form   =  '+string (Z) +'  V ');
Y=1/Z;                               //Admittance
disp('i)   Y (Y) is in polar form   =  '+string (Y) +'  ohm ');

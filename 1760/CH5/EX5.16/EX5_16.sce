      //EXAMPLE 5-16  PG NO-307
Z1=2.828+%i*2.828;
Z2=0+%i*2.5;
R=10;
Z3=3+%i*4;
IN=Z1+Z2;
ZN=(R*Z3)/(R+Z3);
disp('i) current (IN) is   =  '+string (IN)+'A ');
disp('i) impedance (ZN) is   =  '+string (ZN)+'ohms ');


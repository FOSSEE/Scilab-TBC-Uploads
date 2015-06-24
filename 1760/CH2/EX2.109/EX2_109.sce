                   //EXAMPLE 2-109          PG NO-146
V=200;
I=10;
W=314;
Z=V/I;
disp('i)   IMPEDANCE (Z) is    =  '+string (Z) +' ohm ');
R=Z*0.707;
disp('ii)   RESISTANCE (R) is    =  '+string (R) +' ohm ');
XC=Z*0.707;
disp('iv)   INDUCTANCE (XC) is   =  '+string (XC) +' ohm ');
C=1/(W*XC);
disp('iv)   CAPACITOR (C) is    =  '+string (C) +' F ');
P=V*I*0.707;
disp('i) Active Power (P) is  in polar form   =  '+string (P) +'  W ');
Q=V*I*0.707;
disp('i) Reactive Power (Q) is   in  polar form  =  '+string (Q) +'  Var ');

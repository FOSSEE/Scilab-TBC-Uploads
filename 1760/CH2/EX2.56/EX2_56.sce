                  //EXAMPLE 2-56      PG NO-99-100
V=230+%i*0;
R=15+%i*0;
L=%i*7.5;
Ir=V/R;
Z1=-%i*12
disp('i)   CURRENT (Ir) is    =  '+string (Ir) +'  A ');
IL=V/L;
disp('i)   INDUCTANCE CURRENT (IL) is    =  '+string (IL) +'  A ');
Ic=V/Z1;
disp('i)   CAPACITOR CURRENT (Ic) is    =  '+string (Ic) +'  A ');
I=Ir+IL+Ic;
disp('i)    CURRENT (I) is    =  '+string (I) +'  A ');
Z=V/I;
disp('i)   IMPEDANCE (Z) is    =  '+string (Z) +'  A ');
PF=0.8;
Leq=7.2/[2*%pi*50];
disp('i)   EQUIVALENT CURRENT (Ieq) is    =  '+string (Leq) +'  H ');

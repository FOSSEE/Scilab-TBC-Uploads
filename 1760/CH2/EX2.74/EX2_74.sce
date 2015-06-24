                 //EXAMPLE 2-74  PG NO-112
ZA=10+%i*7.226;               //IMPEDANCE
ZB=5+%i*10.99;               //IMPEDANCE
V=200+%i*0;                    //VOLTAGE
IA=V/ZA;                          //CURRENT
disp('i)  CURRENT (IA) is  in polar form  =  '+string (IA) +' A ');
IB=V/ZB;
disp('ii)  CURRENT (IB) is  in polar form  =  '+string (IB) +' A ');
I=IA+IB;
disp('iii)  CURRENT (I) is  in polar form  =  '+string (I) +' A ');
S=V*I;
disp('i)  Apparent Power (S) is     =  '+string (S) +'  VA ');
P=V*I*0.63;
disp('i) Active Power (P) is     =  '+string (P) +'  W ');
Q=V*I*0.775;
disp('i) Reactive Power (Q) is     =  '+string (Q) +'  Var ');

                             //EXAMPLE 9-24         PG NO-608-609
L=20;                          //INDUCTANCE
R=2*L;                        //RESISTANCE
disp('i)  Resistance (R) is    =  '+string ([R]) +' ohm  ');
Wo=sqrt(101);
disp('ii)  Wo (Wo) is    =  '+string ([Wo]) +' rad/sec  ');
Q=(Wo*L)/R;
disp('iii) Q  is    =  '+string ([Q]) +'   ');
BW=Wo/Q;
disp('iv) BANDWIDTH (BW) is    =  '+string ([BW]) +' rad/sec  ');

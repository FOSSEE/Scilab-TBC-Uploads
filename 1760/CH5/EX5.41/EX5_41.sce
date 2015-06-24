       //EXAMPLE 5-41  PG NO-332-333
VTH=10;
V=10;
R1=10;
R2=10;
R3=16.67;
R4=50;
R5=5.56;
R6=3.33;
RTH=V+R5+(((R1+R3)*(R4+R6))/(R1+R3+R4+R6));
I=(V/RTH)-0.4;
disp('i) Resistance (RTH) is    =  '+string (RTH) +'  ohm ');
disp('i) Currrent (I) is    =  '+string (I) +'  A ');

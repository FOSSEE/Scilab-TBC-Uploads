      //EXAMPLE 5-40  PG NO-331-332
R1=3;
R2=2;
R3=12;
R4=4;
R5=8;
V=10;
R=R3/(R1/R2);
TR=R4+((R2*R5)/(R2+R5))+((R1*R3)/(R1+R3));
I=V/TR;
Ir=I*(R2/(R5+R2));
disp('i) Resistance (R) is    =  '+string (R) +'  ohm ');
disp('i) Total Resistance (TR) is    =  '+string (TR) +'  ohm ');
disp('i) Current (I) is    =  '+string (I) +'  A ');
disp('i) Current (Ir) is    =  '+string (Ir) +'  A ');

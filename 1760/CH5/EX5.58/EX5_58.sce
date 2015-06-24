                   //EXAMPLE 5-57      PG NO-341-342
R1=22;
R2=33;
R3=10;
R4=15;
V=24;
TR=[(R1+R2)*(R3+R4)]/(R1+R2+R3+R4);
I=V/TR;
disp('i) Total Resistance (TR) is    =  '+string (TR) +'  Kohms ');
disp('ii) CURRENT (I) is    =  '+string (I) +'  A ');

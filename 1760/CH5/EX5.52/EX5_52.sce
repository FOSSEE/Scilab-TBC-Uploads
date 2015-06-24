          //EXAMPLE  5-52   PG NO-339
R1=2;
R2=4;
R3=2;
V=0.389;            //VOLTAGE
I1=3.89;           //CURRENT
TR=((R1*R2)/(R1+R2))+R2;     //TOTAL RESISTANCE
I=V/TR;                 //CURRENT
TI=I1+I;                 //TOTAL   CURRENT
disp('i) Total resistance (TR) is    =  '+string (TR) +'  ohms ');
disp('i) Current (I) is    =  '+string (I) +'  A ');
disp('i) Total current (TI) is    =  '+string (TI) +'  A ');

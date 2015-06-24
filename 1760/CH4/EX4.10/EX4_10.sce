                              //EXAMPLE 4-11      PG NO-233-234
I1=-1.28;
I2=-0.83;
I3=0.84;
IR1=-I1;                               //CURRENT THROUGH 2.2 RESISTANCE
disp('i) Current (IR1)   is     =  '+string (IR1) +' A   from B to  A ');
IR2=-I1+I2;                               //CURRENT THROUGH 4.7 RESISTANCE
disp('ii) Current (IR2)   is     =  '+string (IR2) +' A  from C to  B ');
IR3=-I2+I3;                               //CURRENT THROUGH 6.8 RESISTANCE
disp('iii) Current (IR3)   is     =  '+string (IR3) +' A  from C to D ');

      //EXAMPLE 5-43 PG NO-333
Vab=38;       //Voltage
R1=12;
R2=6;
RTH=(R1*R2)/(R1+R2);
Iab=Vab/(RTH+3);
disp('i) Resistance (RTH) is    =  '+string (RTH) +'  ohm ');
disp('i) Current (Iab) is    =  '+string (Iab) +'  A ');

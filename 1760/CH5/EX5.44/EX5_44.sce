    //EXAMPLE 5-44 PG NO-333-334
I1=1.6;
I2=0.8;
VTH=6*I2;                              // ((R1*R2)/(R1+R2))
R1=3;
R2=9;                                           
R3=6;
R4=3;
RTH=((((R1*R2)/(R1+R2))+R1)*R3)/(((R1*R2)/(R1+R2))+R1+R2);
IN=VTH/RTH;
RN=RTH;
disp('i) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('i) Resistance (RTH) is    =  '+string (RTH) +'  ohm ');
disp('i) Current (IN) is    =  '+string (IN) +'  A ');
disp('i) Resistance (RN) is    =  '+string (RN) +'  ohm ');

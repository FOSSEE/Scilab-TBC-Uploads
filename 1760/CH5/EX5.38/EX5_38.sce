       //EXAMPLE   5-38  PG  NO-331
R1=100;
R2=4;
R3=8;
R4=50;
R5=5;
VTH=(R1*((R2)/(R2+R3)))-((R3*R4)/(R3+R5));
RTH=((R3*R5)/(R3+R5))+((R2*R3)/(R2+R3));
I=VTH/(10+RTH);
disp('i) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('i) Resistance (RTH) is    =  '+string (RTH) +' ohm ');
disp('i) Current (I) is    =  '+string (I) +'  A ');



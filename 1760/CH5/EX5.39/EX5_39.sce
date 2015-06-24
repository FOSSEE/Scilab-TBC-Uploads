    //EXAMPLE 5-39   PG NO-331
V=36;
R1=5;
R2=11;
R3=6;
VTH=V*(R1/R2);
RTH=(R1*R3)/(R1+R3);
R=RTH;
Pmax=(VTH/(2*RTH))^2*(RTH);
disp('i) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('i) Resistance (RTH) is    =  '+string (RTH) +'  ohm ');
disp('i) Maximum Power (Pmax) is    =  '+string (Pmax) +'  W ');


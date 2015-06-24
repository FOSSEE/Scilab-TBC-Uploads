                  //EXAMPLE 5-51    PG NO-338
I=10;           //CURRENT
R1=1;
R2=1;
R3=1;
VTH=(I*R1)/(R1+R2+R3);
RTH=(R1*(R1+R2))/(R1+R2+R3);
P=(VTH/(RTH+RTH))^2*(RTH);
disp('i) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('i) Resistance (RTH) is    =  '+string (RTH) +'  ohms ');    
disp('i) Power (P) is    =  '+string (P) +'  W ');

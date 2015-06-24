         //EXAMPLE 5-47   PG NO-336
V=5;          //VOLTAGE
R1=2;
R2=1;
VTH=R1+((V-R1)/3);
RTH=R2+((R1*R2)/(R1+R2));
IN=((V*0.5)/(R1+0.5))+((R1/RTH)*(R1/VTH))
disp('i) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('i) Resistance (RTH) is    =  '+string (RTH) +'  ohm ');
disp('i) Current (IN) is    =  '+string (IN) +'  A ');

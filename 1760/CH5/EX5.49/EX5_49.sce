                    //EXAMPE 5-49     PG NO-337-338
V1=120;
V2=65;
R1=20;
R2=30;
VTH=V1-((V1-V2)/(R1+R2))*R1;
RTH=(R1*R2)/(R1+R2);
disp('i) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('i) Resistance (RTH) is    =  '+string (RTH) +'  ohms ');

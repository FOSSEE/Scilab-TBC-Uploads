                 //EXAMPLE 5-69    PG NO-349
V=24;                         //VOLTAGE
R1=0.1;
R2=6;
R3=5;
I=V/[R1+(R3*R2)/(R3+R2)];
I1=I*(R3/(R2+R3));
I2=I*(R2/(R2+R3));
VTH=-(I1*2)-(-2*I2);
RTH=2.533;
IAB=VTH/(RTH+1);
disp('ii) CURRENT (I) is    =  '+string (I) +'  A ');
disp('ii) CURRENT (I1) is    =  '+string (I1) +'  A ');
disp('ii) CURRENT (I2) is    =  '+string (I2) +'  A ');
disp('ii) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('ii) CURRENT (IAB) is    =  '+string (IAB) +'  A ');

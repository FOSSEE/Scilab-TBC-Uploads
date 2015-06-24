           //EXAMPLE 5-35   PG NO-328-329
Va=6;           //VOLTAGE  at PONT A
Vb=-3;           //VOLTAGE   at POINT B
VTH=Va-Vb;
R1=1;
R2=2;
R3=3;
RTH=((R2*R3)/(R2+R3))+((R1*R3)/(R1+R3));
disp('i) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('i) Resistance (RTH) is    =  '+string (RTH) +'  ohm ');

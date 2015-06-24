        //EXAMPLE 5-9  PG NO-302
V=10;   //Voltage
S=0.5*10^-5;
R1=2500;
R2=1050;
R3=200;
R4=500;
Van=(V/(R1+R4))*R4;
Vbn=(V/(R2+R3))*R3;
VTH=Van-Vbn;
RTH=((R1*R4)/(R1+R4))+((R2*R3)/(R2+R3));
I=VTH/(RTH+100);
GD=I/S;                        //Galvonater Deflection
disp('i) voltage (Van) is   =  '+string (Van)+'V ');
disp('i) Voltage (Vbn) is   =  '+string (Vbn)+'V ');
disp('i) Voltage (VTH) is   =  '+string (VTH)+'V ');  
disp('i) Resistance (RTH) is   =  '+string (RTH)+'ohms ');
disp('i) CURRENT (I) is   =  '+string (I)+'A ');
disp('i) Galvoneter Deflection (GD) is   =  '+string (GD)+'mm ');


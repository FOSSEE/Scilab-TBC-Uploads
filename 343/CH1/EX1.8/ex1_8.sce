R1=5;                      //Assigning values to the parameters
R2=7;
R3=8;
Req=R1+R2+R3;             // Calculating equivalent resistance
V=100;
I=V/Req;
V1=I*R1;
V2=I*R2;
V3=I*R3;
disp("Volts",V1,"Voltage across 5 Ohm resistor");
disp("Volts",V2,"Voltage across 7 Ohm resistor");
disp("Volts",V3,"Voltage across 8 Ohm resistor");
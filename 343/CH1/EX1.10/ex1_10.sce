V=100;         // Assigning values to the parameters
R1=5;
R2=10;
R3=15;
R4=20;
Req=R1+R2+R3+R4;  //Equivalent resistance
V1=R1*V/Req;
V2=R2*V/Req;
V3=R3*V/Req;
V4=R4*V/Req;
disp("Ohms",Req,"Equivalent resistance");
disp("Volts",V1,"Voltage across 5 Ohms resistor");
disp("Volts",V2,"Voltage across 10 Ohms resistor");
disp("Volts",V3,"Voltage across 15 Ohms resistor");
disp("Volts",V4,"Voltage across 20 Ohms resistor");

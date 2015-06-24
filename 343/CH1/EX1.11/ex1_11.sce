Itot=12;             //Assigning values to parameters
R1=4;
R2=12;
R3=6;
Req=1/((1/R1)+(1/R2)+(1/R3));        //Equivalent resistance
V=Itot*Req;
I1=V/R1;
I2=V/R2;
I3=V/R3;
disp("Volts",V,"Potential Difference across the parallel circuit");
disp("Amperes",I1,"Current through 4 Ohm resistor")
disp("Amperes",I2,"Current through 12 Ohm resistor")
disp("Amperes",I3,"Current through 6 Ohm resistor")
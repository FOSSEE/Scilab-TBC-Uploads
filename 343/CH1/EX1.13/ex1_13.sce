R1=8;                        // Assigning values to resistors
R2=6;
R3=3;
R4=18;
R5=5;
R=1/((1/R2)+(1/R3));        //simplifying the network
Rs1=R+R4;
Rs2=1/((1/Rs1)+(1/R5));
Rs3=R1+Rs2;
V=60;
I=V/Rs3;                   // Current through the simplified network
disp("Amperes",I,"Current through 8 Ohm resistor");
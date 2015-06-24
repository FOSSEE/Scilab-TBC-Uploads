V1=6;                             //Assigning values to parameters
R1=2;
R2=6;
R3=2;
I1=3;
R4=1;
R5=3;
I2=V1/R1;                        //Performing source transformation
R6=(R2*R3)/(R2+R3);
V2=I2*R6;
R7=R6+R1;
I3=V2/R7;
I4=I1+I3;
IR5=I4*R7/(R7+R4+R5);
disp("Amperes",IR5,"Current in 3 Ohm resistor using source transformation")
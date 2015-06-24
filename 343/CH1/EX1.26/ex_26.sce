I1=5;                          //Assigning values to parameters
R1=2;
V1=6;
I2=2;
R2=4;
V2=I1*R1;                     //Performing source transformation
V=V2-V1;
I3=V/R1;
I=I3+I2;
IR2=I*R1/(R1+R2);
disp("Amperes",IR2,"Current in 4 ohm resistor using source transformation");
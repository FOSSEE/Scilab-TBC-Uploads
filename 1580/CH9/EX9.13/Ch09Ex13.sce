// Scilab Code Ex9.13:  Page-9.45 ; (2004)
clc;clear;
RH = 3.66e-4;    // Hall coefficent, meter cube/C
t = 1e-03;  //  thickness of the specimen, m
Bz = 0.5;   // Magnetic flux density, wb per meter square
Ix = 1e-2; //  Current , A
VH = RH*Ix*Bz/t;    // Voltage across specimen, volt
printf("\nVoltage across specimen = %3.2f  millivolt", VH/1e-3);

// Result
// Voltage across specimen = 1.83  millivolt

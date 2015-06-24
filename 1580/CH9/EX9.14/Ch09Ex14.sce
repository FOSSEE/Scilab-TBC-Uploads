// Scilab Code Ex9.14: Hall coefficent of a semiconductor : Page-9.46 ; (2004)
clc;clear;
Vy = 37e-06;    // Voltage across specimen, volt
t = 1e-03;  //  thickness of the specimen, m
Bz = 0.5;   // Magnetic flux density, wb per meter square
Ix = 20e-3; //  Current , A
RH = Vy*t/(Ix*Bz);    // Hall coefficent, meter cube/C
printf("\nHall coefficent, meter cube/C = %3.1e  meter cube/C", RH);

// Result
// Hall coefficent, meter cube/C = 3.7e-06  meter cube/C 

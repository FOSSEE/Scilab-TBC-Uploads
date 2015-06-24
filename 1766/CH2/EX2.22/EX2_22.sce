clc;funcprot(0);//Example 2.22
//Initilisation of Variables
r1=5;....//inner radius of pipe in cm
r2=10;....//outer radius of pipe in cm
K1=10;....//thermal conductivity of pipe in W/m*degrees celcius
K2=0.05;....//thermal conductivity of fiber glass insulation in W/m*degrees celcius
//calculations
r=%e^(log(r2/r1)*(K2/K1));....//since R2=R1 
r3=r*r2;....//radius of fiber glass in m
disp(r3-r2,"thickness of insulation in cm:")

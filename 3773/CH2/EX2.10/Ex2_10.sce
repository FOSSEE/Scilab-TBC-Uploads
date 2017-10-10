//Chapter 2: Antenna Basics
//Example 2-16.1
clc;

//Variable Initialization
E1 = 3      //Magnitude of electric field in x direction (V/m)
E2 = 6      //Magnitude of electric field in y direction (V/m)
Z = 377     //Intrinsic impedance of free space (ohm)

//Calculation
avg_power = 0.5*(E1**2 + E2**2)/Z       //Average power per unit area (W/m^2)

//Result
disp(avg_power,"The average power per unit area in watts/meter square")

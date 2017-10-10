//Chapter 8: Helical Antennas
//Example 8-5.1
clc;

//Variable Initialization
w = 5       //Width of flattened tubing at termination (mm)
Er = 2.7    //Relative permittivity of the sheet
Z0 = 50     //Characteristic impedance of the sheet

//Calculation
h = w/((377/(sqrt(Er)*Z0))-2)

//Result
mprintf("The required thickness of the polystyrene sheet is %.1f mm",h)

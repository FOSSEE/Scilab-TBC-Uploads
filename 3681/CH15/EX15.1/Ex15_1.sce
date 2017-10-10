// Calculating the current in exciting coil
clc;
disp('Example 15.1, Page No. = 15.7')
// Given Data
F = 200;// Mass (in kg)
lg = 5;// Distance (in mm)
A = 5*10^(-3);// Area of pole face (in meter square)
T = 3000;// Exciting coil turns
u0 = 4*%pi*10^(-7);// Permeability of free space
// Calculation of the current in exciting coil
B = (F*u0/(0.051*A))^(1/2);// flux density in air gap (in Wb per meter square)
mmf_air = 800000*B*lg*10^(-3);// Mmf required for air (in A)
mmf_iron = 0.1*mmf_air;// Mmf required for iron parts (in A).  Since mmf required for iron parts is 10% of air gap mmf
AT = mmf_air+mmf_iron;// Total mmf
I = AT/T;// Current in exciting coil (in Ampere)
disp(I,'Current in exciting coil (Ampere) =');
//in book answer is 1.456 Ampere.  The answers vary due to round off error

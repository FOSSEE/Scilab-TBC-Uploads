// Scilab code Ex9.2: Pg 279 (2008)
clc; clear;
// Part (a)
Diode = cell(3, 1);    // Declare a diode cell
Diode(1).entries = [1 15 30 0.5 0.007];    // Data for Ist diode
Diode(2).entries = [2 15 15 1.3 0.20];    // Data for 2nd diode
Diode(3).entries = [1 15 2.5 5.0 0.67];    // Data for 3rd diode
Resistor = cell(5, 1)    // Declare a resistor cell
Resistor(1).entries = [0.25, 0.026];    // Data for Ist resistor
Resistor(2).entries = [0.5, 0.038];    // Data for 2nd resistor
Resistor(3).entries = [1.0, 0.055];    // Data for 3rd resistor
Resistor(4).entries = [2.5, 0.260];    // Data for 4th resistor
Resistor(5).entries = [7.5, 0.280];    // Data for 5th resistor
V = 24;    // Input voltage, volt
V_Z = Diode(1).entries(2);    // Zener voltage for Ist diode, volt
V_S = V - V_Z;     // Voltage drop across series resistor for all the three diodes, volt

// Diode 1
P_Z = Diode(1).entries(4);    // Power rating of Ist diode, W
I_Z = P_Z/V_Z*1e+03;    // Zener current, mA
R_S = V_S/I_Z*1e+03;    // Value of series resistance, ohm
P_S = V_S^2/R_S;    // Power dissipation across series resistor, watt
printf("\nDiode 1:");
printf("\n========");
printf("\nThe value of series resistance  = %3d ohm", R_S);
printf("\nThe value of power rating of series resistance  = %3.1f W", P_S);
R_S = 270;    // Chosen value of series resistor, ohm
P_S = 0.3;    // Chosen value of power rating, ohm
printf("\nThe suitable value of R_S should be %3d ohm, %3.1f W", R_S, P_S);
printf("\nTotal unit cost = %5.3f pounds\n", Diode(1).entries(5)+Resistor(2).entries(2));

// Diode 2
printf("\nDiode 2:");
printf("\n========");
P_Z = Diode(2).entries(4);    // Power rating of 2nd diode, W
I_Z = P_Z/V_Z*1e+03;    // Zener current, mA
R_S = V_S/I_Z*1e+03;    // Value of series resistance, ohm
P_S = V_S^2/R_S;    // Power dissipation across series resistor, watt
printf("\nThe value of series resistance  = %5.2f ohm", R_S);
printf("\nThe value of power rating of series resistance  = %4.2f W", P_S);
R_S = 120;    // Chosen value of series resistor, ohm
P_S = 1.0;    // Chosen value of power rating, ohm
printf("\nThe suitable value of R_S should be %3d ohm, %3.1f W", R_S, P_S);
printf("\nTotal unit cost = %4.2f pounds", Diode(2).entries(5)+Resistor(3).entries(2));

// Diode 3
printf("\nDiode 3:");
printf("\n========");
P_Z = Diode(3).entries(4);    // Power rating of 3rd diode, W
I_Z = P_Z/V_Z*1e+03;    // Zener current, mA
R_S = V_S/I_Z*1e+03;    // Value of series resistance, ohm
P_S = V_S^2/R_S;    // Power dissipation across series resistor, watt
printf("\nThe value of series resistance  = %3d ohm", R_S);
printf("\nThe value of power rating of series resistance  = %3.1f W", P_S);
R_S = 27;    // Chosen value of series resistor, ohm
P_S = 7.5;    // Chosen value of power rating, ohm
printf("\nThe suitable value of R_S should be %3d ohm, %3.1f W", R_S, P_S);
printf("\nTotal unit cost = %4.2f pounds", Diode(3).entries(5)+Resistor(5).entries(2));

// Part (b)
delta_V_Z = (5*15)/100;    // Allowable change in V_Z, volt
delta_I_Z = 30e-03;    // Allowable change in zener current, A
delta_VZ = zeros(3);
delta_VZ(1) = 30e-03*30;    // Change in zener voltage dor diode 1, V
delta_VZ(2) = 30e-03*15;    // Change in zener voltage dor diode 2, V
delta_VZ(3) = 30e-03*2.5;   // Change in zener voltage dor diode 3, V
printf("\nThe maximum value of zener voltage change = %4.2f V", max(delta_VZ(2), delta_VZ(3)));
printf("\nTo meet the specification at lowest cost, circuit 2 would be adopted");
// Result
// The value of series resistance  = 52.78 ohm
// The value of maximum power rating of series resistance  = 159340.66 W 
// The suitable value of R_S should be 54 ohm, 0.25 W   

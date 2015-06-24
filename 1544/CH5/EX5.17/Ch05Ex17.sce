// Scilab code Ex5.17: Pg 168-169 (2008)
clc; clear;
R_in = 200;                                   // Internal resistance of meter, kilo-ohms
V = 10;                                       // Supply voltage, volts
R_1 = 10;                                     // Resistance, kilo-ohms
R_2 = 47;                                     // Resistance, kilo-ohms
V_1 = R_1/(R_1+R_2)*V                         // P.d across resistance R_1, V
V_2 = R_2/(R_1+R_2)*V                         // P.d across resistance R_2, V
// Part (a)
R_AB = (R_1 * R_in)/(R_1 + R_in);                      // Resistance, kilo-ohms
V_AB = (R_AB / ( R_AB + R_2 ))*V                       // True value of p.d across by voltmetre, V
R_BC = (R_2 * R_in)/(R_2 + R_in);                      // Resistance, kilo-ohms
V_BC = (R_BC / ( R_BC + R_1 ))*V                        // Indicated value of p.d across by voltmetre, V
// Part (b)
// Error for V_1 measurement
error_AB = (V_AB - V_1)/V_1*100                        // Percentage error in the reading
//Error for V_2 measurement
error_BC = (V_BC-V_2)/V_2*100                           // Percentage error in the reading 
printf("\nThe p.d. indicated by the meter across  first resistor = %4.2f V", V_AB);
printf("\nThe p.d. indicated by the meter across second resistor = %4.2f V", V_BC);
printf("\nPercentage error for V_1 measurement = %4.2f percent", error_AB);
printf("\nPercentage error for V_2 measurement = %4.2f percent", error_BC);

// Result
// The p.d. indicated by the meter across  first resistor = 1.68 V
// The p.d. indicated by the meter across second resistor = 7.92 V
// Percentage error for V_1 measurement = -3.96 percent
// Percentage error for V_2 measurement = -3.96 percent 



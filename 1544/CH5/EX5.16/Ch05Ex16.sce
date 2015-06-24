// Scilab code Ex5.16: Pg 166 (2008)
clc; clear;
R_1 = 30;                           // Resistance, ohm
R_2 = 70;                           // Resistance, ohm
R_in = 200;                          // Internal resistance of meter, ohm
V = 12;                              // Supply voltage, V
// Using voltage divider rule, we have
V_2t = (R_2 /(R_1 + R_2))*V               //  True value of p.d across resistance R_2, V
// Since the rsistances R_2 and R-in are parallel, so their equivalent resistance is given their parallel combination
R_BC = (R_2 * R_in)/(R_2 + R_in);                       // Resistance, ohms
// Using the potential divider technique, 
V_2i = (R_BC / ( R_BC + R_1 ))*V                       // Indicated value of p.d across by voltmetre, volts
err = (( V_2i-V_2t ) / V_2t)*100                      // Percentage error in the reading
printf("\nThe p.d. indicated by the meter = %3.1f V", V_2i);
printf("\nThe percentage error in the reading = %4.2f percent", err);


// Result
// The p.d. indicated by the meter = 7.6 V
// The percentage error in the reading = -9.50 percent 


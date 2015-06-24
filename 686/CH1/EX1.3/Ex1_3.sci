clc();
clear;

// To calculate the size of heating surface

m1 = 100;                            // Flow rate of water in lb/hr
ta1 = 50;                            // Initial temperature of water in F
ta2 = 170;                           // Final temperature of water
Cp1 = 1;                             // Heat capacity of water in Btu/lb-F
te1 = 330;                           // Initial temperatutre in flue gases in F
m2 = 400;                            // Mass flow rate of flue gases in lb/hr
Cp2 = .25;                           // Heat capacity of flue gases in Btu/lb-F
q = m1*Cp1*(ta2-ta1);                // Heat absorbed by water in Btu
te2 = te1-q/(m2*Cp2);                // Final temperature of flue gases in F
U = 20;                              // Overall heat transfer in Btu/hr-ft^2-F 

// For parallel flow
delte = te1-ta1;                     // Flue tempearture difference in F
delta = te2-ta2;                     // Water temperature difference in F

// Seeing the value of delte/delta=7, we can attain the value of a
a1 = 0.77;
deltm = (delte + delta)/2;           // Arithmetic mean in F    
LMTD1 = a1*deltm;                     // Log mean temperature diffference
A1 = q/(U*LMTD1);                    // Area in ft^2
printf("The area of heat exchanger for parallel flow is %.2f ft^2 \n ",A1);

// for counterflow
delte = te1-te2;                     // Flue tempearture difference in F
delta = ta1-ta2;                     // Water temperature difference in F

// Seeing the value of delte/dela=1, a=1.
a2 = 1;
LMTD2 = a2*deltm;                      // Log mean temperature diffference
A2 = q/(U*LMTD2);                      // Area in ft^2
printf("The area of heat exchanger for counterflow flow is %.2f ft^2 \n ",A2);

// For cross flow
delte = te1-ta1;                     // Flue tempearture difference in F
delta = te2-ta2;                     // Water temperature difference in F

// Seeing the value of delta/delte=0.143, we can attain the value of a=0.939
a3 = 0.939;
deltm = (delte + delta)/2;           // Arithmetic mean in F    
LMTD3 = a3*deltm;                    // Log mean temperature diffference
A3 = q/(U*LMTD3);                    // Area in ft^2
printf("The area of heat exchanger for cross flow is %.2f ft^2 \n ",A3);









 

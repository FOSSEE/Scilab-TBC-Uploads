
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 4 : DIRECT CURRENT MACHINES 

// EXAMPLE : 4.15

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

S = 500 * 10 ^ 3;              // Rating of the Generator-1 and Generator-2
VI = 800 * 10 ^ 3'             // Actual load 


// CALCULATIONS
//For Case (a)

Voc_a = 500;                                // Open-circuit EMF Generator-1 and Generator-2 in Volts
I = 1000;                                   // Full load current in Amphere
perct_1a = 2/100;                           // Percenatge fall of the Voltage in Generator-1
perct_2a = 3/100;                           // Percenatge fall of the Voltage in Generator-2
V1a = Voc_a - (perct_1a * Voc_a);           // Voltage in the Generator-1 in Volts when it falls to 2% at fully loaded  
V2a = Voc_a - (perct_2a * Voc_a);           // Voltage in the Generator-2 in Volts when it falls to 3% at fully loaded  
// From Chacteristics can be assumed linear as, for Generator 1 is V = 500 + ((500-490)*I1)/(0-1000), V = -0.01*I1+500 and for Generator 2 is V = 500 + ((500-485)*I2)/(0-1000), V = 0.015*I2+500 
// When sharing load of 800KVA at voltage, the load current will be I = I1+I2 = (800*1000)/V
// From above equations we get I1 = 1.5*I2 thus, 2.5*I2 = (800*1000)/V
// Putting the above equations in the Generator 2 equation we get V = -0.015*((800*1000)/(2.5*V))+500 solving we get, 25*V^2 - 12500V + 120000 = 0
V_a = poly ([120000 -12500 25],'x','coeff');                            // Expression for the load Voltage in Quadratic form
r_a = roots (V_a);                                                      // Value of the load Voltage in Volts (neglecting lower value)
I_a = VI/r_a(1,1);
I2_a = I_a/2.5;
I1_a = 1.5*I2_a;

// For Case (b)

perct = 2/100;                              // Percenatge fall of the Voltage in Generator-1and Generator-2
Voc_1b = 500;                               // Open-circuit EMF Generator-1 in Volts
Voc_2b = 505;                               // Open-circuit EMF Generator-2 in Volts
I = 1000;                                   // Full load current in Amphere
V1 = Voc_1b - (perct * Voc_1b);             // Voltage in the Generator-1 in Volts when it falls to 2% at fully loaded  
V2 = Voc_2b - (perct * Voc_2b);             // Voltage in the Generator-2 in Volts when it falls to 2% at fully loaded  
// From Chacteristics can be assumed linear as, for Generator 1 is V = 500 + ((500-490)*I1)/(0-1000), V = -0.01*I1+500 and for Generator 2 is V = 505 + ((505-494.5)*I2)/(0-1000), V = -0.0101*I2+505 
// When sharing load of 800KVA at voltage, the load current will be I = I1+I2 = (800*1000)/V
// From above equations we get V = -0.01*I1 + 500, I1 = -V/0.01 + 500/0.01 = 50000 - 100*V, V = -0.0101*I2 + 505 and I2 = 505/0.0101 - V/.0101 = 50000-99.0099*V
// Putting the above equations in the Current I equation we get I = I1+I2 = (800*1000)/V = 2*50000-199.0099*V solving we get, 199.0099*V^2 - 100000V + 800000 = 0
V_b = poly ([800000 -100000 199.0099],'x','coeff');                     // Expression for the load Voltage in Quadratic form
r_b = roots (V_b);                                                      // Value of the load Voltage in Volts (neglecting lower value)
I_b = VI/r_b(1,1);
I1_b = 50000-100*r_b(1,1)
I2_b = 50000-99.0099*r_b(1,1)


// DISPLAY RESULTS

disp("EXAMPLE : 4.15: SOLUTION :-");
printf("\n For case (a) Having open-circuit EMfs of 500V but their voltage falls to 2 percent and 3 percent when fully loaded Load Voltage,\n\n      Load Voltage = %.2f V \n\n      Load current = %.2f A \n\n      Individual currents are %.2f A and %.2f A \n",r_a(1,1),I_a,I1_a,I2_a)
printf("\n For case (b) Having open-circuit EMfs of 500V and 505V but their governors have identical speed regulation of 2 percent when fully loaded Load Voltage,\n\n      Load Voltage = %.2f V \n\n      Load current = %.2f A \n\n      Individual currents are %.2f A and %.2f A \n",r_b(1,1),I_b,I1_b,I2_b)
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- For case(b) Load voltage = 493.35 V A instead of %.2f V \n ",r_b(1,1));
printf("\n                                                 Load current = 1634.73 A instead of %.2f A \n ",I_b)
printf("\n                                                 Individual currents 665 A and 1153.5 A instead of %.2f A and %.2f \n ",I1_b,I2_b)
printf("\n For Case (b):- From Calculation of the Load Voltage (V), rest of all the Calculated values in the TEXT BOOK is WRONG because of the value Load Voltage (V) is WRONGLY calculated and the same used for the further Calculation part \n")

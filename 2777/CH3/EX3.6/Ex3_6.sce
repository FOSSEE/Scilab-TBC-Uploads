
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.6

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

S = 5;                  // Transformer Rating in kVA
V1 = 220;               // HV side voltage in volts
V2 = 110;               // LV side voltage in Volts
P = 4 * 10 ^ 2;         // Load of the Transformer
pf = 0.8;               // Power Factor (lagging)
f = 50;                 // Frequency in Hertz


// CALCULATIONS

a = V1/V2;              // Turn Ratio of the Transformer

// case (a) At full load
I1 = (S * 10 ^ 3)/V1;       // Primary current at full load in Amphere
I2 = (S * 10 ^ 3)/V2;       // Secondary Current at full Load in Amphere

// Case (b) At 4kW, 0.8 lagging pf load
I11 = (4 * 10 ^ 3 * 0.8)/V1;       // Primary current At 4kW, 0.8 lagging pf load in Amphere
I22 = (4 * 10 ^ 3 * 0.8)/V2;       // Secondary Current At 4kW, 0.8 lagging pf load in Amphere


// DISPLAY RESULTS

disp("EXAMPLE : 3.6 : SOLUTION :-") ;
printf("\n   (a)   Turn Ratio of the Transformer , a = %.f \n ",a);
printf("\n (b.1.1) Primary current at full load , I1 = %.2f A \n",I1);
printf("\n (b.1.2) Secondary current at full load , I2 = %.2f A \n ",I2);
printf("\n (b.2.1) Primary current at 4kW, 0.8 lagging pf load , I1 = %.3f A \n",I11);
printf("\n (b.2.1) Secondary current at 4kW, 0.8 lagging pf load , I2 = %.3f A \n",I22);

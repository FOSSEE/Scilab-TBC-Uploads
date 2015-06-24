// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 3: DC Dynamo Voltage Relations - DC Generators
// Example 3-1

clear; clc; close; // Clear the work space and console.

// Given data
kW = 150; // Power rating of Shunt generator in kW
V_1 = 250; // Voltage rating of Shunt generator in V
V_a = V_1; // Voltage rating of Shunt generator in V
R_f = 50; // Field resistance in ohm
R_a = 0.05; // Armature resistance in ohm

// Calculations
I_1 = ( kW * 1000 ) / V_1; // Full-load line current flowing to the load in A
I_f = V_1 / R_f; // Field current in A
I_a = I_f + I_1; // Armature current in A
E_g = V_a + I_a * R_a; // Full load generated voltage in V

// Display the results
disp("Example 3-1 Solution : ")
printf("\n a: I1 = %d A ", I_1 );
printf("\n b: If = %d A ", I_f );
printf("\n c: Ia = %d A ", I_a );
printf("\n d: Eg = %.2f A ", E_g );

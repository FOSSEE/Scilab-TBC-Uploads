// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 3: DC Dynamo Voltage Relations - DC Generators
// Example 3-2

clear; clc; close; // Clear the work space and console.

// Given data
kW =100; // Power rating of the generator in kW
V_1 = 500; // Voltage rating of hte generator in V
R_a = 0.03; // Armature resistance in ohm
R_f = 125; // Shunt field resistance in ohm
R_s = 0.01; // Series field resistance in ohm
I_d = 54; // Diverter current in A

// Calculations
I_1 = ( kW * 1000 ) / V_1; // Full-load line current flowing to the load in A
I_f = V_1 / R_f; // Shunt Field current in A
I_a = I_f + I_1; // Armature current in A
I_s = I_a - I_d; // Series Field current in A
R_d = ( I_s * R_s ) / I_d; // Diverter resistance in ohm
E_g = V_1 + I_a * R_a + I_s * R_s; // Generated voltage at full load in V

// Display the results
disp("Example 3-2 Solution : ")
printf("\n a: Rd = %.4f ohm ", R_d );
printf("\n b: Eg = %.2f V ", E_g );








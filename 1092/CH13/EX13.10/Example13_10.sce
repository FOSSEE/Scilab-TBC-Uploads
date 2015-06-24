// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 13: RATINGS,SELECTION,AND MAINTENANCE OF ELECTRIC MACHINERY
// Example 13-10

clear; clc; close; // Clear the work space and console.

// Given data
// single phase alternator
V_orig = 500 ; // Rated voltage of the alternator in volt
kVA_orig = 20 ; // Rated power of the alternator in kVA
I = 40 ; // Rated current of the alternator in A
R = 2 ; // Armature resistance in ohm
X = 15 ; // Armature reactance in ohm

V_new = 5000 ; // New voltage of the alternator in volt
kVA_new = 100 ; // New power of the alternator in kVA

// Calculated armature impedance from Ex.13-9c
Z_pu_orig = 1.211 ; // original per-unit value of armature impedance in p.u

// Calculation
Z_pu_new = Z_pu_orig * (kVA_new/kVA_orig) * (V_orig/V_new)^2 ;
// new per-unit value of armature impedance in p.u

// Display the results
disp("Example 13-10 Solution : ");
printf(" \n New per-unit value of armature impedance\n Z_pu(new) = %.5f p.u",Z_pu_new);

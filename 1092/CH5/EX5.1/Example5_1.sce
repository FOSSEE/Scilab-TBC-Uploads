// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 5: ARMATURE REACTION AND COMMUTATION IN DYNAMOS
// Example 5-1

clear; clc; close; // Clear the work space and console.

// Given data
conductors = 800 ; // No. of conductors 
I_a = 1000 ; // Rated armature current in A
P = 10 ; // No. of poles
pitch = 0.7 ; // Pole-face covers 70% of the pitch 
a = P ; // No. of parallel paths ( Simplex lap-wound )

// Calculations
// Using Eq.(5-1)
Z = conductors / P ; // No. of armature conductors/path under each pole
Z_a = Z * pitch ; // Active armature conductors/pole

// Solving for Z_p using Z_p = Z_a / a
Z_p = Z_a / a ; // No. of pole face conductors/pole 

// Display the results
disp("Example 5-1 Solution : ");
printf(" \n No. of pole face conductors/pole to give full armature reaction ");
printf(" \n compensation, if the pole covers 70 percent of the pitch is : \n ");
printf(" \n Z_p = %.1f conductors/pole ", Z_p );

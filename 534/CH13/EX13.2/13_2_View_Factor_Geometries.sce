clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 13.2   Page 821 \n')// Example 13.2

// View Factors of known surface Geometries

// (1) Sphere within Cube
F12a = 1                    ;//By Inspection
F21a = (%pi/6)*F12a         ; //By Reciprocity

// (2) Partition within a Square Duct
F11b = 0                    ;//By Inspection
//By Symmetry F12 = F13
F12b = (1-F11b)/2      ;      //By Summation Rule
F21b = sqrt(2)*F12b     ;     //By Reciprocity

// (3) Circular Tube
//From Table 13.2 or 13.5, with r3/L = 0.5 and L/r1 = 2
F13c = .172;
F11c = 0;                    //By Inspection
F12c = 1 - F11c - F13c      ;//By Summation Rule
F21c = F12c/4               ;//By Reciprocity

printf('\n Desired View Factors may be obtained from inspection, the reciprocity rule, the summation rule and/or use of charts \n (1) Sphere within Cube F21 = %.3f \n (2) Partition within a Square Duct F21 = %.3f \n (3) Circular Tube F21 = %.3f',F21a,F21b,F21c);
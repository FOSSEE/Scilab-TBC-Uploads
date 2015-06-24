clc();
clear

// To find the time required for the billet to remain in the oven  

A = 2;                                // Length of steel billet in ft
B = 2;                                // Breadth of billet in ft
C = 4;                                // Height of billet in ft
To = 70;                              // Initial temperature of billet n F
Tf = 750;                             // Maximum temp. of billet in F
T = 700;                              // Temperature for which time has to be found out
k = 25;                               // Thermal conductivity in Btu/hr-ft^2-F
a = 0.57;                             // Thermal diffusivity in ft^2/hr
h = 100;                              // Heat transfer coeff. in Btu/hr-ft

BiA = h*A/k;                          // Biot number
BiB = h*B/k;                          
BiC = h*C/k;
t = 1.53;                            // Assumed temperature in F
s1 = a*t/A^2;                         // Parameters
s2 = a*t/B^2;
s3 = a*t/C^2;

// Seeing the values of Bi and s and comparing from the table 

// T/Toa=0.302 and T/Tob=0.805 and (T/Toa)^2*T/Toc=0.0735

printf("The time required for the centre temperature to reach 700 F under the conditions specified in the problem is t=%.2f hr",t);



 
// Initilization of variables
b=1 // cm // smaller side of the L-section
h=4 // cm // larger side of the L-section
// Calculations
// (A) RECTANGLE A_1: Using the paralel axis theorem
Ixy=0
I_xy1=(Ixy)+((h*b)*(b/2)*(h/2)) // cm^4
// (B) RECTANGLE A_2: Using the paralel axis theorem
I_xy2=(Ixy)+((b*(h-1))*(1+(3/2))*(b/2)) // cm^4
// Product of inertia of the total area
I_xy=I_xy1+I_xy2 // cm^4
// Calculations
clc
printf('The Product of inertia of the L-section is %f cm^4 \n',I_xy)

// Initilization of variables
A= 50 // cm^2 // area of the shaded portion
J_A=22.5*10^2 // cm^4 // polar moment of inertia of the shaded portion
d=6 // cm
// Calculations
J_c=J_A-(A*d^2) 
// substuting the value of I_x from eq'n 2 in eq'n 1 we get,
I_y=J_c/3 // cm^4 // M.O.I about Y-axis
// Now from eq'n 2,
I_x=2*I_y // cm^4 // M.O.I about X-axis
// Results
clc
printf('The centroidal moment of inertia about X-axis (I_x) is %f cm^4 \n',I_x)
printf('The centroidal moment of inertia about Y-axis (I_y) is %f cm^4 \n',I_y)

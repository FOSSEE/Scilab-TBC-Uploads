clear all; clc;
disp("Ex 6_17")
disp("Figures 6-30b and 6-30c show the free body diagrams")

// Applying equilibrium equations to the entire frame 
Cx=20/1.1// Summing moments about A and equating to zero
Ax=18.2// Balancing forces in X-direcion
Ay=20// Balancing forces in Y-direction

// Applying conditions of equilibrium on member AB
Bx=18.2// Balancing forces in X-direction
ND=(20*2)/1//Summing moments about B and equating to zero
By=20// Balancing forces in Y-direction

//Applying conditions of equilibrium on disk
Dx=0//Balancing forces in X- direction
Dy=20//Balancing forces in Y direction

printf('\n\n Bx = %0.1f N\nBy = %0.0f N\n Dx = %0.0f N\n Dy = %0.0f N',Bx,By,Dx,Dy)

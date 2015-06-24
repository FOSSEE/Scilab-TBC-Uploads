clear all; clc;
disp("Ex 6_5")

// Equilibrium condition gives:
Ax=400//in N
Dy=900//in N
Ay=300// in N

disp("Figure 6-16c shows the free body diagram of the left portion of the truss")

//Summing moments about G
F_BC=((300*4)+(400*3))/3
printf('\n F_BC = %0.0f N (T)\n',F_BC)

//Summing moments about C
F_GE=300*8/3
printf('\n F_GE = %0.0f N (C)\n',F_GE)

//Summing forces in Y direction,
F_GC=300*5/3
printf('\n F_GC = %0.0f N (T)\n',F_GC)

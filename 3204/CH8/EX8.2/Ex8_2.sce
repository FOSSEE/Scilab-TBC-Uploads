// Initilization of variables
V_r=20 // Velocity ratio
// Refer the table given in the textbook for values of W,P,M.A & efficiency (eta)
// Calculations
// Part (a)- Realtionship between W & P
// Here part a cannot be solved as it has variables which cannot be defined in Scilab. Ref.textbook for the solution
// Part (b)- Graph between W & efficiency (eta)
x=[0;30;40;50;60;70;80;90;100] // values for W // N
y=[0;21.4;23.5;25;26.1;25.9;27.6;28.1;28.6] // values for efficiency (eta)
subplot(221)
xlabel("W (N)")
ylabel("efficiency (eta)")
plot(x,y)
// Results
clc
printf('The graph is the solution')
// The value of m is found by drawing straight line on the graph and by taking its slope. Ref textbook for the solution

// Initilization of variables
V_r=20 // Velocity ratio
// Values from the table // Variables have been assumed
// Values of W in N
W=[30;40;50;60;70;80;90;100]
// P in N
P=[7;8.5;10;11.5;13.5;14.5;16;17.5]
M.A=[W(1)/P(1);W(2)/P(2);W(3)/P(3);W(4)/P(4);W(5)/P(5);W(6)/P(6);W(7)/P(7);W(8)/P(8)]
// Efficiency (n)
n=(V_r^-1)*[M.A(1);M.A(2);M.A(3);M.A(4);M.A(5);M.A(6);M.A(7);M.A(8)]*100 // %
// Calculations
// Part (a)- Realtionship between W & P
// Here part a cannot be solved as it has variables which cannot be defined in Scilab. Ref.textbook for the solution
// Part (b)- Graph between W & efficiency n(eta)
x=[0;W(1);W(2);W(3);W(4);W(5);W(6);W(7);W(8)] // values for W // N
y=[0;n(1);n(2);n(3);n(4);n(5);n(6);n(7);n(8)] // values for efficiency n (eta) // %
subplot(221)
xlabel("W (N)")
ylabel("efficiency n (%)")
plot(x,y)
// Results
clc
printf('The graph is the solution')
// The value of m is found by drawing straight line on the graph and by taking its slope. Ref textbook for the solution
// The curve of the graph may differ from textbook because of the graphical calculation.

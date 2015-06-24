//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.13
clear;
clc;

//Given
P = 760;//pressure at maximum boiling azeotrope of A and B in mmHg
x_A = 0.6;//mole fraction of A in liquid phase
x_B = 0.4;//mole fraction of B in liquid phase
p_A = 600;//vapour pressure of A at 90 deg cel
p_B = 300;//vapour pressure of B at 90 deg cel

//To Check whether the activity coefficient of the solution can be represented by the Margules equation
y_A = P/p_A;//Activity coefficient of A
y_B = P/p_B;//Activity coefficient of B
//From the Margules equation or equation (a) & (b)
U = [((x_B^2)-(2*(x_B^2)*x_A)) (2*(x_B^2)*x_A); (2*(x_A^2)*x_B) ((x_A^2)-(2*(x_A^2)*x_B))];
V = [log(y_A); log(y_B)];
W = U\V;
//Now the value of constants A and B in equations(a)&(b) are given as
A = W(1);
B = W(2);
//let us assume 
x_A = [0.0 0.2 0.4 0.6 0.8 1.0];
x_B = [1.0 0.8 0.6 0.4 0.2 0.0];
//C = lny_A; D = lny_B; E = ln(y_A/y_B)
for i = 1:6
    C(i) = (x_B(i)^2)*(2*(B-A)*x_A(i)+A);
    D(i) = (x_A(i)^2)*(2*(A-B)*x_B(i)+B);
    E(i) = C(i)-D(i);
end
clf;
plot(x_A,E);
xtitle(" ","x_A","ln(y_A/y_B)");
a = get("current_axes");
set(a,"x_location","origin");
//Since the graph drawn is approximately symmetrical.Thus it satisfies the Redlich-Kister Test
mprintf('The actvity coefficients of the system can be represented by Margules equation');
//end


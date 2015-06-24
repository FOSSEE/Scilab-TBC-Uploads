//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 16


clear;
clc;


//Given:
P1 = 24.62; //vapour pressure of cyclohexane (kPa)
P2 = 24.41; //vapour pressure of benzene (kPa)

//Activity coeffecients are given by:
//ln_g1 = 0.458*x2^2;
//ln_g2 = 0.458*x1^2;

//To construct the P-x-y diagram
x1 = [0 0.2 0.4 0.6 0.8 1.0]
x2 = 1-x1;

for i = 1:6
    g1(i) = %e^(0.458*x2(i)^2); //activity coeffecient for component 1
    g2(i) = %e^(0.458*x1(i)^2); //activity coeffecient for component 2
    P(i) = (g1(i)*x1(i)*P1) + (g2(i)*x2(i)*P2); //total pressure (kPa)
    y1(i) = (g1(i)*x1(i)*P1)/P(i);
end
disp(P);
disp(y1);

//To construct P-x-y diagram
clf
plot(x1,P);
plot(y1,P);
xtitle("P-x-y Diagram","x1 and y1","Pressure");

//end
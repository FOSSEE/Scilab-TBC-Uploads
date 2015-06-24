//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 23


clear;
clc;


//Given:
P = 101.3; //total pressure (kPa)
x1 = [0.003 0.449 0.700 0.900];
y1 = [0.432 0.449 0.520 0.719];
P1 = [65.31 63.98 66.64 81.31]; //(kPa)
P2 = [68.64 68.64 69.31 72.24]; //(kPa)

//To test whether the given data are thermodynamically consistent or not
x2 = 1-x1;
y2 = 1-y1;
for i = 1:4
    g1(i) = (y1(i)*P)/(x1(i)*P1(i));
    g2(i) = (y2(i)*P)/(x2(i)*P2(i));
    c(i) = log(g1(i)/g2(i)); //k = ln (g1/g2)
end

clf
plot(x1,c)
a = get("current_axes");
set(a,"x_location","origin");

//As seen from the graph net area is not zero
mprintf('The given experimental data do not satisfy the Redlich-Kistern criterion');

//end

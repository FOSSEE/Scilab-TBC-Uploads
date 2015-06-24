// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 16")
Pi=0.5*10^6;//initial pressure of gas in pa
Vi=0.5;//initial volume of gas in m^3
Pf=1*10^6;//final pressure of gas in pa
disp("NOTE=>this question contain derivation which cannot be solve using scilab so we use the result of derivation to proceed further ")
disp("we get W=(Vf-Vi)*((Pi+Pf)/2)")
disp("also final volume of gas in m^3 is Vf=3*Vi") 
Vf=3*Vi
disp("now work done by gas(W)in J")
 W=(Vf-Vi)*((Pi+Pf)/2)

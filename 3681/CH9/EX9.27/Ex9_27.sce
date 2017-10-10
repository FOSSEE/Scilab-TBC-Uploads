// Calculating the reactance voltage for a machine with straight line and sinusoidal commutation
clc;
disp('Example 9.27, Page No. = 9.86')
// Given Data
Ns = 60;// Number of segments
rev = 10;// Number of revolution per second
W = 1.5;// Brush width in segments
L = 0.2;// Co-efficient of self-induction (in mH)
I = 20;// Current per coil
// Calculation of the reactance voltage for a machine with straight line and sinusoidal commutation
Tc = W/(Ns*rev);// Time of commutation
Erav = L*10^(-3)*2*I/Tc;// Average reactance voltage
disp(Erav,'Reactance voltage with straight line commutation (Volts)=');
disp(%pi/2*Erav,'Reactance voltage with sinusoidal commutation (Volts)=');
//in book answers are 3.2 Volts and 5 Volts respectively.  The answers vary due to round off error

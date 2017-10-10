//To calculate current ratings and maximum voltage of a rated resistor.

clc;
clear;

P=1;
R=10*(10^3);

// Using Power Equation and Ohm's Law.

V=sqrt(P*R);

I=sqrt(P/R);

disp('volts',V,'The Maximum voltage of the resistor =')

disp('amperes',I,'The Current rating of the resistor =')

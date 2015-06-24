// find frequency of oscillation
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 23-4, page 908

clear;clc; close;
	
// Given data
C1=0.001*10^-6;// capacitance in faraday
C2=0.01*10^-6;// capacitance in faraday
C3=50*10^-12;// capacitance in faraday
L=15*10^-6;// inductance in henry

// Calculations
C=1/((1/C1)+(1/C2)+(1/C3));// equivalent capacitance in faraday
fr=1/(2*%pi*(L*C)^0.5);// frequency of oscillation in hertz
disp("hertz",fr,"frequency of osscillation=")

// Result
// frequency of oscillation is 5.81 MHertz
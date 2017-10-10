// Example 14_12
clc;funcprot(0);
// Given data
T_H=22.0+273.15;// K
T_L=65;// K
Q_cooling=0.100;// J/s
W_input=3.00;// W
V=12;// V

// Calculation
// (a)
COP_rS=T_L/(T_H-T_L);// The Stirling ASC coefficient of performance of a refrigeration unit
// (b)
COP_rSact=Q_cooling/W_input;// The actual coefficient of performance of the unit
printf("\n(a)The Stirling ASC coefficient of performance of a refrigeration unit,COP_reversed Stirling ASC R/AC=%0.3f \n(b)The actual coefficient of performance of the unit,COP_reversed Stirling actual R/AC=%0.4f",COP_rS,COP_rSact);

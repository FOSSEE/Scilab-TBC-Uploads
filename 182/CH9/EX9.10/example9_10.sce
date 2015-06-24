// to find the frequency
// example 9-10 in page 268
clc;
// data given
C=13D-12; Rs=600; // input capacitance in farad and source resistance in ohm
//calculation
printf("frequency=%.1f MHz",1/(2*%pi*C*Rs*10^6));
//result
//frequency=20.4 MHz 
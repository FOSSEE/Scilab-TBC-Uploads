// to find the shortest pulse width that can be displayed
// example 9-6 in page 262
clc;
//DATA GIVEN
Rs=3.3e+3; Ci=15D-12;// source resistance in ohm and input capacitance in farad
//calculation
printf("shortest pulse width=%.3f micro-second",10*Rs*Ci*2.2*10^6);//here shortest pulse width =10*tuo in seconds where tuo is the rise time imposed by the oscilloscope
//result
//shortest pulse width=1.089 micro-second 
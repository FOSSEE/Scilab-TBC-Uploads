// to find the longest pulse width
// example 9-5 in page 261
clc;
//Given data
Ri=10e+6;// input resistance in ohm
Cc=0.1e-6;// coaxial cable capacitance in farad
//calculation
printf("pulse width=%.1f s",Ri*Cc/10);// here pulse width=tou/10 seconds
//result
//pulse width=0.1 s 
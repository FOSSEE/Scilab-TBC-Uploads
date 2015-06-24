// Example 3.14
clc;
clear;
close;
// Given data
format('v',6);
Rf= 20*10^3;// in Ω
R1= 10*10^3;// in Ω

//Part (i) When switch S is off,
Aoff_non_inv= 1+Rf/R1;// non-inverting amplifier circuit gain
 Aoff_inv= -Rf/R1;// inverting amplifier gain
 Aoff= Aoff_non_inv+Aoff_inv;// amplifier circuit gain
 disp(Aoff,"Part (i) : When switch S is off, the gain of the amplifier circuit is : ");

// Part (ii) When switch S is on,
Aon= -Rf/R1;// amplifier circuit gain
disp(Aon,"Part (ii) : When switch S is on, the gain of the amplifer circuit is : ");


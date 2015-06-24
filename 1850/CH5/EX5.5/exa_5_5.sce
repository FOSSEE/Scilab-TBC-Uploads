// Exa 5.5
clc;
clear;
close;
// Given expression Vout= 10*(V2-V1)
// For a differential amplifier circuit
// Vout= Rf/R*(V2-V1)
// Compare the above expression with the given expression for the output, we have
RfbyR= 10;
R=10;// minimum value of resistancce to be used in kohm
Rf= RfbyR * R;// in k ohm
disp(Rf,"Value of Rf in k ohm");

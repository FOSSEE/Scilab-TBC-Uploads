// Exa 5.3
clc;
clear;
close;
// Given expression Vout= -2*V1+3*V2+4*V3
// For an operational amplifier
// Vout= -Rf*[V1/R1+V2/R2+V3/R3]
// Compare the above expression with the given expression for the output
r_1=2;// value of Rf/R1
r_2=3;// value of Rf/R2
r_3=4;// value of Rf/R3
// Resistance R3 will be minimum value of 10 k ohm
R3=10;// in k ohm
Rf= r_3*R3;// in k ohm
R2= Rf/r_2;// in k ohm
R1= Rf/r_1;// in k ohm
disp(Rf,"Value of Rf in k ohm");
disp(R2,"Value of R2 in k ohm");
disp(R1,"Value of R1 in k ohm");

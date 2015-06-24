// Example 2.9
clc;
clear;
close;
// Given data
P1= 96;// in kN/m^2
P2= 725;// in kN/m^2
V1= 600;// in cm^3
V2= 100;// in cm^3
T1= 100+273;// in K
// Formula P1*V1/T1 = P2*V2/T2
T2= P2*V2*T1/(P1*V1);// in K
disp(T2-273,"Temperature at the end of compression in °C is : ");
// Note:- In the book, There is an error to calculate the value of T2.

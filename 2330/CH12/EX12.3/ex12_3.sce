// Example 12.3
format('v',6)
clc;
clear;
close;
// given data
gm= 2000;// in µS
gm=gm*10^-6;// in S
R_D= 4.7;// in kΩ
Vin= 2;// in mV
R_L= 10;// in kΩ
r_D= R_D*R_L/(R_D+R_L);// in kΩ
r_D= r_D*10^3;// in Ω
A= gm*r_D;// unit less
// The output voltage 
Vout= A*Vin;// in mV
disp(Vout,"The output voltage in mV is : ")

// Note: The calculated value of A in the book is wrong. Correct value of A is : 6.39, So the answer in the book is wrong.

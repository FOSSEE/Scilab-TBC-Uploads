// Exa 3.17
clc;
clear;
close;
// Given data
I= 30;// in µA
I=I*10^-6;// in A
T=125+273;// in K
r_F= T/(11600*I*%e^(-0.32/T)*11600);// in Ω
disp(r_F*10^3,"The dynamic resistance in mΩ is : ")

// Note: There are two error in this example in the book. First one is this that putted value of T in first term of calculation (i.e 3.98/11600) is wrong (correct value is 398 not 3.98).
//            and second one error is this that calculaiton is also wrong for putted value

// Exa 4.26
clc;
clear;
close;
// Given data
Ep= 0.0153*10^-17;//in J
lamda= 1300;// in nm
nita_ext= 0.1;
e = 1.6*10^-19;//in C
Eg= 1.42*e;// in eV
S= nita_ext*Eg/e;// in W/A  (where S= deltaP/deltaI  )
disp(S,"Slope of efficiency in W/A is : ")

// Note: In the book, the evaluated value of Eg/e is wrong because the value of 1.42*e/e = 1.42 not equal to 0.956 , Hence the answer in the book is wrong 

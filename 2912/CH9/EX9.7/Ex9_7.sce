// chapter 9
// example 9.7
// find density of hole carriers at room temperature
// page 274-275
clear;
clc;
// given
ni=1E20; // in /m^3 (intrinsic carrier density)
ND=1E21; // in /m^3 (donor impurity concentration)
// calculate
nh=ni^2/ND; // calculation of density of hole carriers at room temperature
printf('\nThe density of hole carriers at room temperature is \tnh=%1.0E /m^3',nh);
// Note: answer in the book is wrong due to printing mistake

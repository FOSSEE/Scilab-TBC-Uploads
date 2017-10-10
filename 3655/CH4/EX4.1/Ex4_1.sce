// Example 4.1
// Computation for percentage increase in conductivity per degree rise in temperature//
// Page no.87

clc;
clear;
close;

//Given data ;
T=300;
EGO=0.785;//forbidden or bandgap energy of germanium at 0 degree K
k=8.62*10^-5;


//Calculation for increase in conductivity per degree rise in temperature//
conduct_per_temp=(3/(2*T))+(EGO/(2*k*T^2));

//Calculation for percentage increase in conductivity per degree rise in temperature//
P1=conduct_per_temp*100;

//Thus the conductivity of the intrinsic germanium increases by 5.56 percent per degree kelvin rise in temperature//

//Displaying the result in command window
printf('\n Increase in conductivity per degree rise in temperature = %0.4f/degree K',conduct_per_temp);
printf('\n \n percentage increase in conductivity per degree rise in temperature = %0.2f percent',P1);


//Answers are varying due to round off error//

// Example 4.8
// Computation for temperature at which fermi level conincides with the edge of the conduction band//
// Page no.101

clc;
clear;
close;

//Given data ;
NC=2.5*10^20;


//Calculation for concentration of donor atoms per cm3//
ND=(1/(2*10^8))*(5*10^22);

//Calculation for desired temperature//
T=(NC/(4.82*10^21))^(2/3);


//Displaying the result in command window
printf('\n Concentration of donor atoms per cm3 = %0.1f x 10^14 atoms/cm3',ND*10^-14);
printf('\n \n Desired temperature = %0.2f degree K',T);


//Answers are varying due to round off error//

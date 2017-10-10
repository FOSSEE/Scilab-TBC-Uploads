// Example 3.1
// Computation for mobility of the free electrons in aluminium//
// Page no.61

clc;
clear;
close;

//Given data ;
d=2.70*10^3//2.70*10^3 kg/m3
v=3;//3 electrons/atom
A=26.98;
M=1.660*10^-27;//1.660*10^-27 kg/atom
e=1.60*10^-19;
R=3.44*10^-8;//R=resistivity

//...................................(B)....................................//

//Calculation for concentration of the free electrons in aluminium//
n=(d*v)/(A*M);

//Calculation for mobility of the free electrons in aluminium//
mu=10^4/(n*e*R);//mu=mobility of the free electrons



//Displaying the result in command window
printf('\n Concentration of the free electrons in aluminium = %0.3f x 10^29 electron/m3',n*10^-29);
printf('\n \n Mobility of the free electrons in aluminium = %0.2f cm2/V sec',mu);



//Answers are varying due to round off error//

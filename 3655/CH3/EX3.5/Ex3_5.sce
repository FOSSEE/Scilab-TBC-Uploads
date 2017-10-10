// Example 3.5
// Computation for percentage increase in zero-external-field thermoinic-emission current because of the schottky effect//
// Page no.78

clc;
clear;
close;

//Given data ;
V=500;//plate voltage
ra=1;//anode radius
rk=0.01;//cathode radius
r=10^-4;
T=2500;



//Calculation for electric field intensity at the surface of the cathode//
E=(V/(log(ra/rk)))*(1/r);

//Calculation for percentage increase in zero-external-field thermoinic-emission current because of the schottky effect//
P1=log(%e^((0.434*0.44*E^(1/2))/T));//P1=log(I/Ith)
P2=10^0.0796;//P2=I/Ith

//I/Ith=1.20,shows that the schottky theory predicts a 20 percent increase over the zero-field emission current//


//Displaying the result in command window
printf('\n Electric field intensity at the surface of the cathode = %0.3f x 10^6 V/m',E*10^-6);
printf('\n \n log(I/Ith) = %0.4f ',P1);
printf('\n \n I/Ith = %0.2f ',P2);
printf("\n \n \n \n I/Ith=1.20,shows that the Schottky theory predicts a 20 percent increase over the zero-field emission current.");

//Answers are varying due to round off error//

//Example8.2  // to determine the output voltage of multiplier
clc;
clear;
close;
Vin = 15 ; // V

// the output of multiplier is defined as
//Vo = K*V1*V2
// because of i/p terminal the circuit performs mathematical operation squaring
// i.e  V1 = V2 = Vin
K = 1 ; // we assume
Vo = K*(Vin)^2;
disp('the output voltage of multiplier is = '+string(Vo)+' V '); 

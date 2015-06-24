
//Example6.26  // to calculate the output voltage of op-amp circuit
clc;
clear;
close;
Rf = 100*10^3 ; // ohm
R1 = 10*10^3 ; // ohm
R2 = 25*10^3 ; // ohm
R3 = 50*10^3 ; // ohm

// the output of op-amp A1 is
// VA1 = (-Rf/R1)*V1 ;
VA1 = (-Rf/R1);
disp('The output of op-amp A1 is = '+string(VA1)+'V1' );       // *V1 because the output is come from 1 op-amp

// the output of op-amp A2 is
// Vo = -Rf*((VA1/R2)+(V2/R3));
//Vo = -100*(-0.4*V1+0.02V2);
disp('The output of op-amp A2 is  Vo = 40V1 - 2V2 ');   

disp('The output is equal to the difference between 40V1 and 2V2 ');   

//Example14.1 // to determine the regulated voltage 
clc;
clear;
close;
R1 = 250 ; //ohm 
R2 = 2500 ; // ohm 
Vref = 2 ; //V //reference voltage
Iadj = 100*10^-6; // A  // adjacent current

//the output voltage of the adjustable voltage regulator is defined by
Vo = (Vref*((R2/R1)+1)+(Iadj*R2)) ;
disp('the output voltage of the adjustable voltage regulator is = '+string(Vo)+' V ');

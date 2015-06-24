//Example14.3 // to determine the output voltage 
clc;
clear;
close;
R1 = 100*10^3 ; //ohm 
R2 = 500*10^3 ; // ohm 
Vref = 1.25 ; //V //reference voltage

//the output voltage of the adjustable voltage regulator is defined by
Vo = Vref*(R1+R2)/R1;
disp('the output voltage of the adjustable voltage regulator is = '+string(Vo)+' V ');

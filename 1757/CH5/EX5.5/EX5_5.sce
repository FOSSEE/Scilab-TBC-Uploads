//Example5.5 // Determine the bias current effect with and without current compensation method
clc;
clear; 
close;
R1 = 10 ; //kilo ohm
R2 = 100 ; //kilo ohm
Ib1 = 1.1*10^-3 ;
Ib2 = 1*10^-3 ; 
// the output voltage of the circuit due to bias current is
Vo = Ib1*R2 ;
disp('the output voltage of the circuit due to bias current is = '+string(Vo)+' V ');

//Bias compensated resistor is given by
R3 = (R1*R2)/(R1+R2) ;
disp('Bias compensated resistor is = '+string(R3)+' kilo ohm ');

//Bias compensated output voltage is given by
Vo = R2*(Ib1-Ib2);
disp('Bias compensated output voltage is = '+string(Vo)+' V ');

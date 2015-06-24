//Example5.4 // find the output voltage of an op-amp circuit
clc;
clear; 
close;
Vos = 1 ; //mV  // input offset volt
R1 = 10 ; //kilo ohm  // input resistance
R2 = 350 ; //kilo ohm  // feedback resistance

// the output voltage due to the input offset voltage of the op-amp circuit is defined by
Vo1 = ((R1+R2)/(R1)*Vos) ;
disp('the output voltage due to the input offset voltage  is = '+string(Vo1)+' mV ');

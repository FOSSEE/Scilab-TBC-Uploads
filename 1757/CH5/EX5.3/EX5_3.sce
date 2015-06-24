//Example5.3 // find the input offset voltage of an op-amp circuit
clc;
clear; 
close;
Vo = 90.2 ; //mV  // output voltage
R1 = 2 ; //kilo ohm  // input resistence
R2 = 150 ; //kilo ohm  // feedback resistence

// the input offset voltage (Vos) of an op-amp circuit is defined as
Vos = ((R1)/(R1+R2)*Vo) ;
disp('the input offset voltage (Vos) of an op-amp circuit is = '+string(Vos)+' mV ');

// Example6.23  // to determine the output voltage of an op-amp
clc;
clear;
close;
Vin = 5 ; // V
R1 = 25*10^3 ; // ohm
R2 = 75*10^3 ;  // ohm

// in this problem op-amp A1 perform the voltage follower and op-amp A2 perform inverting amplifier and op-amp A3 perform non-inverting amplifier

// the output voltage of follower op-amp A1
Vo1 = Vin ;

// the output of the inverting amplifier A2
Vo2 = -((R2/R1)*Vo1) ;
disp('The output of the inverting amplifier is = '+string(Vo2)+ ' V');

// the output of the non-inverting amplifier A3
Vo =(1+(R2/R1))*Vo1 ;
disp('The output of the non-inverting amplifier is = '+string(Vo)+ ' V');

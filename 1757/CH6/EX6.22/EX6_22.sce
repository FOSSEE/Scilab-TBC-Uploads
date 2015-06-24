//Example6.22  // To determine the output voltage
clc;
clear;
close;
Vin = 2 ;
R2 = 20*10^3 ;
R1 = 2*10^3 ;

// the output voltage of follower Vo1 is
Vo1 = Vin ;
disp('the output voltage of follower Vo1 is = '+string(Vo1)+ '  V');
// the output voltage of an inverting amplifier
Vo = -(R2/R1)*Vo1 ;
disp('The output voltage of an inverting amplifier is = '+string(Vo)+ ' V ');


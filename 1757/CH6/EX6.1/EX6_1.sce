//Example6.1  // design an inverting amplifier with a closed loop voltage gain of Av = -5
clc;
clear;
close;
Av = -5 ;
Is = 5*10^-6 ; // A
Rs = 1*10^3 ; // ohm
// input voltage source Vs = sinwt volts

// in an inverting amplifier frequency effect is neglected then i/p volt Vin = 1 V and total resistance equal to Rs+R1

// the input current can be written as Iin=Is
// Is = (Vin/Rs+R1);
Iin = Is;
Vin = 1 ; // V
R1 = (1-(Iin*Rs))/Iin  ;
disp('the value of resistance R1 is = '+string(R1)+' ohm');

// closed loop voltage gain of an inverting amplifier
//Av = -(R2/Rs+R1)
R2 = -(Av*(Rs+R1));
disp('the value of resistance R2 is  = '+string(R2)+' ohm');

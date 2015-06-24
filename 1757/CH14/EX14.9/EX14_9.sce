// Example14.9  // determine the output voltage of the audio power amplifier IC LM380
clc;
clear;
close;
Vcc = 10 ; // V
Ic3 = 0.01*10^-6 ;  // A  // collector current of the transistor Q3
Ic4 = 0.01*10^-6 ;  // A  // collector current of the transistor Q4
R11 = 25*10^3 ; // ohm
R12 = 25*10^3 ;  // ohm

// the collector current of Q3 is defined as
 // Ic3 = (Vcc-3*Veb)/(R11+R12);
Veb = (Vcc-(R11+R12)*Ic3)/3 ;
disp('The emitter bias voltage is = '+string(Veb)+' V ');

// the output voltage of the IC LM380
Vo = (1/2)*Vcc+(1/2)*Veb;
disp('The output voltage of the IC LM380 is = '+string(Vo)+' V ');

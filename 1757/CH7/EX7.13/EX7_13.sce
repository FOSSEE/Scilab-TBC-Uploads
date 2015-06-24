//Example7.13  // to determine the output voltage of the precision rectifier circuit
clc;
clear;
close;
Vi = 10 ; //V i/p volt
R1 = 20 ; // K ohm
R2 = 40 ; // K ohm
Vd = 0.7 ; // V   the diode voltage drop

// the output of the half wave precision rectifier is defined as
// Vo = -(R2/R1)*Vi ; for Vi < 0
//    = 0 otherwise
// i.e for Vi > 0
//              Vo = 0
// for Vi < 0
Vo = -(R2/R1)*Vi
disp('The output of the half wave precision rectifier Vo is = '+string(Vo)+' V ');

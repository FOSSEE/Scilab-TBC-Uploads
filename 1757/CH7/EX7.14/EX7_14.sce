//Example7.14  // to determine the output voltage of the precision rectifier circuit for i/p voltage a) Vi = 5 b) Vi = -5
clc;
clear;
close;
Vi = 5 ; //V i/p volt
R1 = 5 ; // K ohm
R2 = 15 ; // K ohm
Vd = 0.7 ; // V   the diode voltage drop

// the output of the half wave precision rectifier is defined as
// Vo = -(R2/R1)*Vi ; for Vi < 0
//    = 0 otherwise

// for Vi = 5 V
// i.e for Vi > 0
//              Vo = 0
// for Vi < 0
Vo = -(R2/R1)*Vi;
disp('The output of the half wave precision rectifier Vo is = '+string(Vo)+' V ');

// for Vi = -5 V
// i.e for Vi > 0
//              Vo = 0
// for Vi < 0
Vi =-5 ; // V
Vo = -(R2/R1)*Vi;
disp('The output of the half wave precision rectifier Vo is = '+string(Vo)+' V ');

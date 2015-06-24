//Example7.15  // to determine the output voltage of the precision rectifier circuit for i/p voltage a) Vi = 7 b) Vi = -7
clc;
clear;
close;
Vi = 7 ; //V i/p volt
R1 = 5 ; // K ohm
R3 = 5 ; // K ohm
R4 = 5 ; // K ohm
R2 = 15 ; // K ohm
R5 = 15 ; // K ohm
Vd = 0.7 ; // V   the diode voltage drop

// the output of the full wave precision rectifier is defined as
// Vo = -A*Vi ;      for Vi < 0                      equation 1
//    = A*Vi  ;      otherwise                       equation 2

// or  Vo = abs(A*Vi) ;

// The gain of precision full wave rectifier
A = (((R2*R5)/(R1*R3))-(R5/R4)) ;
disp('The gain of precision full wave rectifier A is = '+string(A)+' ');


// for Vi = 7 V           the output voltage is
Vi = 7 ;
      Vo = -A*Vi ;      // from equation 1
      Vo =  A*Vi ;      // from equation 2
Vo = abs(A*Vi) ;
disp('The output voltage Vo is = '+string(Vo)+' V ');

// for Vi = -7 V           the output voltage is
Vi = -7 ;
      Vo = -A*Vi ;      // from equation 1
      Vo =  A*Vi ;      // from equation 2
Vo = abs(A*Vi) ;
disp('The output voltage Vo is = '+string(Vo)+' V ');

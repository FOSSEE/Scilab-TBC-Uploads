//Example3.5 // To determine emitter resistance of the difference amplifier
clc;
clear;
close;
Vcc = 10 ; // volt
Vee = -10 ;  //volt
Iq  =  0.8 ;  //mA
Ie  =  0.8 ;  //mA
CMRRdb = 90 ;  //dB
Vt = 0.026 ;

// Transistor parameter
beta = 100 ;

// CMRR = abs(Ad/Acm);
// the CMRR of the difference amplifier is defined as
//CMRR = ((1/2)*(1+((1+beta)*Ie*Re)/beta*Vt))

// CMRRdb = 20*log10(CMRR)
CMRR = 10^(CMRRdb/20);
disp(' The CMRR of difference amplifier is = ' +string(CMRR)+ '  ' );

// The resistance RE is calculated as

RE = (((2*CMRR)-1)/((1+beta)*Ie))*(beta*Vt)
disp(' The value of resistance RE is = ' +string(RE)+ ' K ohm ' );

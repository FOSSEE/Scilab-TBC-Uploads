//Example 3.1  // Determine the collector current Ic1 and collector-emitter voltage Vce1 for the difference amplifier circuit
clc;
clear;
close;
V1 = 0 ;    // volt
V2 = -5 ;   //volt
Vcm =  5 ;   //volt
Vcc = 10;   //volt
Vee = -10 ;  //volt
Ie =  1 ;  //mA
Rc =  10 ;  //kilo ohm

// Transistor parameters
// base current are negligible
Vbe = 0.7 ;  // volt

// The collector current of difference amplifier is
Ic1 = Ie/2 ; 
disp('  The  collector  current  of  difference  amplifier  Ic1 = Ic2 = '+string(Ic1)+' mA ');

// The collector voltages of transistors Q1 and Q2 are expressed as

Vc1  = Vcc-Ic1*Rc ;
disp(' The collector voltages of transistors Q1 and Q2 are  Vc1 = Vc2 = '+string(Vc1)+' volt ');

// We know common mode voltage (Vcm) , from this the emitter voltage can be identified as follows
// For the common mode voltage Vcm = 0 V , the emitter voltage is Ve = -0.7 V
// For the common mode voltage Vcm = 5 V , the emitter voltage is Ve =  4.3 V
// For the common mode voltage Vcm = -5 V , the emitter voltage is Ve = -5.7 V

// For the different emitter voltages the collector-emitter voltage can be calculated as

Ve = -0.7 ;  // volt
Vce1 = Vc1-Ve;
disp('For Ve = -0.7 Volt  the  collector - emitter  voltage  Vce1  =  ' +string(Vce1)+' Volt');

Ve = 4.3 ;  // volt
Vce1 = Vc1-Ve;
disp('For Ve = 4.3 Volt  the  collector - emitter  voltage  Vce1  =  ' +string(Vce1)+' Volt');

Ve = -5.7 ;  // volt
Vce1 = Vc1-Ve;
disp('For Ve = -5.7 Volt  the  collector - emitter  voltage  Vce1  =  ' +string(Vce1)+' Volt');

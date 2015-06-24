//Example8.1  // to determine the output voltage of inverting amplifier (V2)
clc;
clear;
close;
Vin = 18 ; // V
V1 = -6 ;  // V

// in the op-amp due to the infinite i/p resiostance the input current is = 0
// i1+i2 = 0
// it gives relation
Vo = -Vin ;

// the output of multiplier is defined as
//Vo = K*V1*V2

K = 1 ; // we assume

V2 = (Vo/(K*V1));
disp('the output voltage of inverting amplifier (V2) is = '+string(V2)+' V '); 

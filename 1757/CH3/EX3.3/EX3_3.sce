//Example 3.3 // To find the output of a difference amplifier when only common mode signal is applied
clc;
clear;
close;
// V1 = V2 = Vcm = 200*sin(wt) ;   // micro volt (uV)
Acm  = -0.237 ;

// When the common mode input signal is applied to the difference amplifier , the difference mode gain is zero
Vcm = 200 ;
Vo = Acm*Vcm ;
disp('       The output of a difference amplifier is  Vo  = '+string(Vo)+'sinwt uV ');  // multiply by sinwt because it is in Vcm

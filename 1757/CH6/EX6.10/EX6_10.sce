//Example6.10  // To determine the range of the differential voltage gain
clc;
clear;
close;
//R1 = 1 K ohm to 25 K ohm ;
R2 = 50 ; // K ohm
R3 = 10 ;  // K ohm
R4 = 10 ; // K ohm

// the output of instrumentation amplifier is given by
//Vo = (R4/R3)*(1+(2*R2/R1))*(VI@-VI1);

// the differential voltage gain of the instrumentation amplifier can be written as
//Av = (Vo/(VI2-VI1)) = (R4/R3)*(1+(2R2/R1));

// For R1 = 1 K ohm   the maximum differential voltage gain of the instrumentation amplifier is
R1 = 1 ; // K ohm
Av = (R4/R3)*(1+(2*R2/R1));
disp('the maximum differential voltage gain of the instrumentation amplifier is = '+string(Av)+ ' ');

// For R1 = 25 K ohm   the mminimum differential voltage gain of the instrumentation amplifier is
R1 = 25 ; // K ohm
Av = (R4/R3)*(1+(2*R2/R1));
disp('the minimum differential voltage gain of the instrumentation amplifier is = '+string(Av)+ ' ');

disp(' the range of the differential voltage gain of the instrumentation amplifier is ');
disp('                    5 <= Av <= 101 ');

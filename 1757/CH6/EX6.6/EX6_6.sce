// Example6.6   // Design a op-amp circuit to provide the output voltage Vo = V2 - 3 V1 with Ri1 =Ri2 = 100*10^3
clc;
clear;
close;
Ri1 = 100*10^3 ; // ohm
Ri2 = 100*10^3 ; // ohm
// the i/p resistance 
R1 = Ri1 ;
R3 = Ri2 ;

// Vo = V2 - 3 V1;                                    equation 1
// the output of the summer circuit is given as
// Vo = [(R4/(R3+R4)*(1+(R2/R1))*Vi2-(R2/R1)*Vi1]        equation 2

// compare equation 1 and 2  of Vo we get 
// (R4/(R3+R4)*(1+(R2/R1)) = 1 ;                           equation  3
// R2/R1 = 3 ;                                           equation 4

// by subsituting the value of R1 and R3 in equation 3 and 4

// from equation  4
R2 = 3*R1 ;
disp('the value of resistance R2 is  = '+string(R2)+' ohm');

// from equation  3
R4 = (100*10^3)/3 ;
disp('the value of resistance R4 is  = '+string(R4)+' ohm');



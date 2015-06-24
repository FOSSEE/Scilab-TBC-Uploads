//Example6.25  // To calculate the output voltage
clc;
clear;
close;
Vin = 2.5 ; 
R1 = 10*10^3 ;
R2 = 10*10^3 ;
R3 = 10*10^3 ;
Rf = 30*10^3 ;

// the total gain of the circuit 
//Av =A1v*A2v*A3v ;
Av = (1+(Rf/R1))*(-Rf/R2)*(-Rf/R3);
disp('the total gain of the circuit is = '+string(Av)+ ' ');

// The  output voltage of the op-amp 
Vo = Av*Vin ;
disp('The  output voltage of the op-amp is = '+string(Vo)+ ' V');
